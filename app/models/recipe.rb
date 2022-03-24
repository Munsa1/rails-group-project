class Recipe < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :recipe_foods, dependent: :destroy
  has_many :foods

  validates :Name, presence: true
  validates :description, presence: true, length: { maximum: 250 }
  validates :cookingtime, :preperationtime, numericality: { greater_than_or_equal_to: 0 }
  validates :public, inclusion: { in: [true, false] }
end
