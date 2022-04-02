class HomeController < ApplicationController
  before_action :authenticate_user!
  layout 'user'
  def index
    @posts = Post.all
  end

  def curtidas
    @postsLikeds = LikePost.all.where(user_id: current_user.id).pluck(:post_id)
  end

  def usuários
    @users = User.all
  end
end
