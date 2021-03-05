class AddUserToArticle < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :articles, :users, column: :author_id
    add_index :articles, :author_id
  end
end
