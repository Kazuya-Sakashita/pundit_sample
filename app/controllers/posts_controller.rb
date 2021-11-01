class PostsController < ApplicationController
  def index
 
      @posts = Post.all

  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])

  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
     # punditにてauthorizeメソッドにリソースオブジェクトを渡して認可状況を確認。
    authorize @post

    if @post.destroy
    redirect_to posts_path
    else
      render :index
    end
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
