class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :priority, presence: true

  has_and_belongs_to_many :articles
end
