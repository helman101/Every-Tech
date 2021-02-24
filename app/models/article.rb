class Article < ApplicationRecord
  validates :author_id, :title, :content, presence: true

  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :voting_users, through: :votes, source: :user
end
