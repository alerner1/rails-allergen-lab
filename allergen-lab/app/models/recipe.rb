class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  accepts_nested_attributes_for :ingredients

  def self.sort_by_ingredients(recipes)

    num_ingredients = recipes.sort_by do |recipe|
      recipe.ingredients.length
    end

    num_ingredients.reverse
  end
end
