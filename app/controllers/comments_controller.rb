class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to recipe_path(@recipe)
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @post.comments.create(comment_params)

    redirect_to recipe_path(@recipe)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to recipe_path(@comment.recipe)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :title, :body)
  end

end
