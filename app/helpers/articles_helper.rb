module ArticlesHelper
  def create_categories(categories, article)
    categories.each do |key, value|
      next if value.nil?

      category = if Category.exists?(value.to_i)
                   Category.find(value.to_i)
                 else
                   Category.create(id: value.to_i,
                                   name: key.to_s)
                 end
      article.categories << category
    end
  end
end
