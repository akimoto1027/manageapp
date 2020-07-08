class PostsController < ApplicationController
  def index
    @posts = Post.all
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:genre, :name, :company, :phone_number, :email, :others).merge(user_id: current_user.id)
  end
end