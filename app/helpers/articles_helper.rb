module ArticlesHelper
  def create_categories(category, article)
    case category
    when 'Video Games'
      article.categories.build(name: 'Video Games')
    when 'Computers'
      article.categories.build(name: 'Computers')
    when 'Phones'
      article.categories.build(name: 'Phones')
    when 'Robotics'
      article.categories.build(name: 'Robotics')
    end
  end
end
