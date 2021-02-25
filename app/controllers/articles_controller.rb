class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      current_user.articles << @article
      redirect_to article_path(@article), notice: 'Article created succesfully'
    else
      redirect_to new_article_path, alert: 'This article can be create'
    end
  end

  private 

  def article_params
    params.require(:article).permit(:title, :content, :image)
  end
end
