class Vote < ApplicationRecord
  validates :user_id, uniqueness: { scope: :article_id }
  validates :user_id, :article_id, presence: true

  belongs_to :user
  belongs_to :article
end
