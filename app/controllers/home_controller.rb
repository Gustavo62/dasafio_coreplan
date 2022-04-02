class HomeController < ApplicationController
  before_action :authenticate_user!
  layout 'user'
  def index
    @posts      = Post.all.order(:create_at)
    @users      = User.all
    @LikeComent = LikeComent.all
    @LikePost   = LikePost.all
  end

  def curtidas
    @postsLikeds = Post.all.find_by_id(LikePost.all.where(user_id: current_user.id).order(:create_at).pluck(:post_id))
  end

  def usuários
    @users = User.all
  end

  def dar_like_post
    @liked = LikePost.where(user_id: params[:user_id],post_id: params[:post_id])
    if @liked.size != 0
      LikePost.where(user_id: params[:user_id],post_id: params[:post_id]).take.delete
    else
      LikePost.create(user_id: params[:user_id],post_id: params[:post_id])
    end
    redirect_to root_path
  end
end
