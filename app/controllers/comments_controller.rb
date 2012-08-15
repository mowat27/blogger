class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params[:comment])

    @article.save!
    redirect_to article_path(@article), :notice => "Your comment was added"
  end
end
