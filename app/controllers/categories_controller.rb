class CategoriesController < ApplicationController
  def index
    @most_pop = Article.where('id = ?', Vote.maximum('article_id')).first || Article.order('created_at desc').first
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.order('created_at desc')
  end
end
