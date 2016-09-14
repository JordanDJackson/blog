class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])

  end
  def index
    @tags = Tag.all
  end
  def destroy
    Tag.destroy
    flash.notice = "Tags Destroyed!"
    redirect_to article_path(articles)
  end
end
