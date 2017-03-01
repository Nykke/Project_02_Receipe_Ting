class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @recipe = Recipe.new
    @recipes = Recipe.where(params[:category_id] == @category)
  end

end
