class Article < ApplicationRecord
  validates :author_id, :title, :content, presence: true
  validates :title, presence: true, length: { in: 6..200 }
  validates :content, presence: true, length: { in: 6..10000 }

  has_and_belongs_to_many :categories
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :voting_users, through: :votes, source: :user
  has_one_attached :image
end
