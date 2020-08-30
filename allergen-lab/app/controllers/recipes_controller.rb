class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.search(params[:q])
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)

    redirect_to recipe_path(@recipe)
  end

  def edit
  end

  def update
    @recipe.update(recipe_params)

    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy

    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :q)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
