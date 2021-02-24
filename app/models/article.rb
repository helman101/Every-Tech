class Article < ApplicationRecord
  validates :author_id, :title, :content, presence: true

  has_and_belongs_to_many :categories
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :voting_users, through: :votes, source: :user
end
