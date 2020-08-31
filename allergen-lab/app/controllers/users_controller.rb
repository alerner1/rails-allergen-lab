class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to user_path(@user)
  end

  def edit
  end

  def update
    @user.update(user_params)

    redirect_to user_path(@user)
  end

  def destroy
    @user.user_ingredients.each do |u_i|
      u_i.destroy
    end
    @user.recipes.each do |recipe|
      recipe.recipe_ingredients.each do |r_i|
        r_i.destroy
      end
      recipe.destroy
    end
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
