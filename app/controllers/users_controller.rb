class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      redirect_back(fallback_location: posts_path)
    end
  end

  def likes_toggle
    post = Post.find_by(id: params[:post_id])
    current_user.liked_posts << post
    redirect_back(fallback_location: posts_path)
  end
end
