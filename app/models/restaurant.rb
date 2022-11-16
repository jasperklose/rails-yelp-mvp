class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true

  VALID_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: VALID_CATEGORIES }

  has_many :reviews, dependent: :destroy
end
