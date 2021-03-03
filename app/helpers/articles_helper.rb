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

  def title_error
    return unless flash[:form_errors]

    flash[:form_errors]['title'].first if flash[:form_errors].include?('title')
  end

  def content_error
    return unless flash[:form_errors]

    flash[:form_errors]['content'].first if flash[:form_errors].include?('content')
  end

  def image_error
    return unless flash[:form_errors]

    flash[:form_errors]['image'].first if flash[:form_errors].include?('image')
  end
end
