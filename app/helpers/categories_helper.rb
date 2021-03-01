module CategoriesHelper
  def categories_all
    render partial: 'category', collection: @categories
  end
end
