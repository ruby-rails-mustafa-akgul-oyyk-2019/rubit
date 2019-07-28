class CommentsController < ApplicationController
  before_action :find_article, only: [:show, :index]

  def index
    @comments = @article.comments
  end

  def show
    @comment = @article.comments.find(params[:id])

    redirect_to article_comments_path(@article, @comment)
  end

  def preview

  end

  private

    def find_article
      @article = Article.find(params[:article_id])
    end
end
