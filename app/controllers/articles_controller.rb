class ArticlesController < ApplicationController

def index
  @articles = Article.all
end

def show
  @article = Article.find(1)
end

end