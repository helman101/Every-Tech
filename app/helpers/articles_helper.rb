module ArticlesHelper
  def create_categories(categories, article)
    categories.each do |key, value|
      unless value.nil?
        category = Category.exists?(value.to_i) ? Category.find(value.to_i) : Category.create(id: value.to_i, name: key.to_s)
        article.categories << category 
      end
    end
  end
end