class RecipesController < ApplicationController

before_action :authenticate_user!, only:[:create, :destroy]
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])

  end

  def new
    @category = Category.find(params[:category_id])
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
      unless @recipe.user == current_user

         flash[:alert] = "Only the Chef can edit this Recipe!"
      end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)

    redirect_to recipe_path
  end

  def create
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.create!(recipe_params.merge(user: current_user))

    redirect_to category_path(@category)
  end

  def destroy

    @recipe = Recipe.find(params[:id])
      if @recipe.user == current_user
         @recipe.destroy
      else
    flash[:alert] = "Only the Chef can delete this Recipe!"
      end
      redirect_to recipes_path
  end

private
  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :img_url, :directions)
  end

end
