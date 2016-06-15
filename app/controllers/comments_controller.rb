class CommentsController < ApplicationController
  expose :comment

  def create
    comment.user = current_user
    comment.save
    redirect_to restaurant_path(comment.restaurant)
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :rating, :restaurant_id)
  end
end
