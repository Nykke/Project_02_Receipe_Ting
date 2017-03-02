class CommentsController < ApplicationController

before_action :authenticate_user!, only:[:create, :destroy]
  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new
  end

  def edit
      @recipe = Recipe.find(params[:recipe_id])
      @comment = Comment.find(params[:id])
        unless @comment.user == current_user

          flash[:alert] = "Only the author can delete this comment!"
        end
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    # if validates?
        redirect_to recipe_path(@recipe)
    # else
    #   flash[:alert] = "input is required!"
    #   render :new
    # end
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create!(comment_params.merge(user: current_user))
    # if validates?
        redirect_to recipe_path(@recipe)
    # else
    #   flash[:alert] = "input is required!"
    #   render :new
    # end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.find(params[:id])
     @comment.destroy
     redirect_to recipe_path(@recipe)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :title, :body)
  end

end
