class CommentsController < ApplicationController
  def new; end

  def create
    comment = Comment.new(comment_params)
    comment.user = current_user

    comment.save

    redirect_to user_path(comment.user)
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :body)
  end
end
