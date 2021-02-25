class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, too_short: 'name is too short' }
  validates :title, presence: true, length: { in: 6..20 }
  validates :content, presence: true, length: { in: 6..1000 }
  validates :categories, presence: true

  has_many :authored_articles, class_name: 'Article', foreign_key: 'author_id'
  has_many :votes
  has_many :voted_articles, through: :votes, source: :article
  has_one_attached :image
end
