module ArticlesHelper
  def create_categories(categories, article)
    categories.each do |key, value|
      article.categories.create(id: value.to_i, name: key.to_s) unless value.nil?
    end
  end
end