class LikesController < ApplicationController
  def create
    user = current_user
    post = Post.find(params[:post_id])

    like = Like.find_by(user_id: user.id, post_id: post.id)

    if like.nil?
      like = Like.new(user_id: current_user.id, post_id: post.id)
      like.save
    end

    redirect_to user_path(like.user)
  end

  def destroy
    post = Post.find(params[:post_id])
    like = Like.find_by(user_id: current_user.id, post_id: post.id)
    like.destroy
    redirect_to user_path(like.user)
  end
end
