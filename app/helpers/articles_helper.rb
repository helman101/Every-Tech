module ArticlesHelper
  def create_categories(categories, article)
    categories[:category_ids].each do |value|
      next if value.to_i.zero?

      category = Category.find(value.to_i)
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
