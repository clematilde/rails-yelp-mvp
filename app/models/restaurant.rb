class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # dependent: :destroy?

  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end
