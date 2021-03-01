class CategoriesController < ApplicationController
  def index
    @most_pop = Article.includes(:votes).group(:article_id).first
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

end
