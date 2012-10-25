# respond_to and format blockは regularリクエストとjavascirpt(Ajax)リクエストすべて対応する。

class CommentsController < ApplicationController
  # before_filterは this run load_article method
  # before all the actions in your comments controller
  before_filter :load_article, :except => :destroy
  before_filter :authenticate, :only => :destroy

  def create
    @comment = @article.comments.new(params[:comment])
    if @comment.save
      respond_to do |format|
        format.html { redirect_to @article, :notice => 'Thank for your comment'}
        format.js #When no code is added to a format block, Rails looks for a template named after the view
      end
      #redirect_to @article, :notice => 'Thanks for your comment'
    else
      respond_to do |format|
        format.html { redirect_to @article, :alert => 'Unable to add comment'}
        format.js { render 'fail_create.js.erb'} #明示的に render templateを指定することも可能
      end
      #redirect_to @article, :alert => 'Unable to add comment'
    end
  end

  def destroy
    @article = current_user.articles.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html{redirect_to @aritcle, :notice => 'Comment deleted'}
      format.js
    end
    #redirect_to @article, :notice => 'Comment deleted'
  end

  private
  # commentsはいつもarticle_idを持っている
  # なぜなら、nested named routesへ定義しているから
  def load_article
    @article = Article.find(params[:article_id])
  end
end
