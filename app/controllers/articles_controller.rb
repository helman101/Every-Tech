class ArticlesController < ApplicationController
  include ArticlesHelper

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.valid?
      create_categories(categories_params, @article)
      redirect_to article_path(@article), notice: 'Article created succesfully'
    else
      @article.destroy
      redirect_to new_article_path, alert: 'This article can\'t be create'
    end
  end

  private 

  def article_params
    params.require(:article).permit(:title, :content, :image)
  end

  def categories_params
    params.require(:categories).permit(:name)
  end
end
