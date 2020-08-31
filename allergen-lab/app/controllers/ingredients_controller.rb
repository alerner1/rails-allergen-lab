class IngredientsController < ApplicationController
  before_action :find_ingredient, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all.sort_by { |i| i.users.length }.reverse
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)

    redirect_to ingredient_path(@ingredient)
  end

  def edit
  end

  def update
    @ingredient.update(ingredient_params)

    redirect_to ingredient_path(@ingredient)
  end

  def destroy
    @ingredient.destroy

    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
