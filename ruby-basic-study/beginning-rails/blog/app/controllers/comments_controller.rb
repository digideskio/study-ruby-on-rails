class CommentsController < ApplicationController
  # before_filterは this run load_article method
  # before all the actions in your comments controller
  before_filter :load_article, :except => :destroy
  before_filter :authenticate, :only => :destroy

  def create
    @comment = @article.comments.new(params[:comment])
    if @comment.save
      redirect_to @article, :notice => 'Thanks for your comment'
    else
      redirect_to @article, :alert => 'Unable to add comment'
    end
  end

  def destroy
    @article = current_user.articles.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article, :notice => 'Comment deleted'
  end

  private
  # commentsはいつもarticle_idを持っている
  # なぜなら、nested named routesへ定義しているから
  def load_article
    @article = Article.find(params[:article_id])
  end
end
