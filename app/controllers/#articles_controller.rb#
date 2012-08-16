class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to article_path(@article), :notice => "#{@article.title} was created"
    else
      flash[:alert] = "Please fix the errors below"
      render :new
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, :notice => "#{@article.title} was deleted"
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to articles_path, :notice => "#{@article.title} was updated"
    else
      flash[:alert] = "Please fix the errors below"
      render :edit
    end
  end
end
