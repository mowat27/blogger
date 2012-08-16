class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all_tags
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    redirect_to tags_path, :notice => "Tag '#{tag.name}' was deleted" 
  end
end
