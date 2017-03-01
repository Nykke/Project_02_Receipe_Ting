class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
  end

  def new
    @category = Category.find(params[:category_id])
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[recipe_params])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)

    redirect_to recipe_path
  end

  def create
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.create!(recipe_params)

    redirect_to category_path(@category)
  end

  def destroy
  @recipe = Recipe.find(params[:id])
  @recipe.destroy

  redirect_to recipes_path
  end

private
def recipe_params
  params.require(:recipe).permit(:title, :ingredients, :img_url, :directions)
end




end
