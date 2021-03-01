class Article < ApplicationRecord
  validates :title, :content, :image, presence: true
  validates :title, length: { in: 6..200 }
  validates :content, length: { in: 6..5000 }

  has_and_belongs_to_many :categories
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :voting_users, through: :votes, source: :user
  has_one_attached :image, dependent: :destroy
end
