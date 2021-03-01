class ArticlesController < ApplicationController
  include ArticlesHelper

  before_action :require_login, only: [:create, :new]

  def new
    @article = Article.new
  end

  def create
    @article = current_user.authored_articles.build(article_params)
    if @article.save
      create_categories(params[:article][:categories], @article)
      redirect_to article_path(@article), notice: 'Article created succesfully'
    else
      redirect_to new_article_path, alert: 'This article can\'t be create'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private 

  def article_params
    params.require(:article).permit(:title, :content, :image)
  end

end
