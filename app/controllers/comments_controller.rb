class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create params.require(:comment).permit(:content)
    if image = params[:comment][:image]
    @comment.image.attach(image)
    redirect_to @comment
    end
  end

  def show
    @comment = Comment.find(params[:id])
    @comment_flug = Comment.comment_exist?
  end

  def edit
    @comment = Comment.find(current_user[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update params.require(:comment).permit(:content, :image)
    redirect_to @comment
  end
end
