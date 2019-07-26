class PostsController < ApplicationController
  def index
    @posts = Post.latest_posts
  end

  def show
  end
end
