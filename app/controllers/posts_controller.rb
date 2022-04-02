class PostsController < ApplicationController
  layout 'user'
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all.where(user_id: params[:user_id])
    @user  = User.all.find(params[:user_id])
    @LikePost   = LikePost.all
    @seguidor = Seguidor.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end
  def dar_like_post
    @liked = LikePost.where(user_id: params[:user_id],post_id: params[:post_id])
    if @liked.size != 0
      LikePost.where(user_id: params[:user_id],post_id: params[:post_id]).take.delete
    else
      LikePost.create(user_id: params[:user_id],post_id: params[:post_id])
    end
    redirect_to posts_path(user_id: params[:user_id])
  end
  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post was successfully created."
      redirect_to root_path
    else
      flash[:notice] = "Ocorreu algum problema."
      redirect_to root_path
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    if params[:control] == 'inside'
      redirect_to posts_path(user_id: params[:user_id])
    else
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:user_id, :post_msg)
    end
end
