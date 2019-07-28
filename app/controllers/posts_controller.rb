class PostsController < ApplicationController
  def index
    @posts = Post.latest_posts

    cookies[:total_posts] = @posts.size
    cookies.encrypted[:enc_total_posts] = @posts.size

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @posts }
      format.json { render json: @posts }
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(posts_params)
    redirect_to @post
  end

  private
    def posts_params
      params.require(:post).permit(:body)
    end
end
