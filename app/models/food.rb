class Food < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :recipe_foods, dependent: :destroy

  validates :Name, presence: true, length: { minimum: 3 }
  validates :measurementunit, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 1_000_000 }
end
