class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def self.search(search)
    if search
      @recipe = Recipe.find_by(name: search)
      if @recipe
        self.where(recipe_id: @recipe)
      else
        Recipe.all
      end
    else
      Recipe.all
    end
  end
end
