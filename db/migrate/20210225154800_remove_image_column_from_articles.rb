class RemoveImageColumnFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :image
  end
end
