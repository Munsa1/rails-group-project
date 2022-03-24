class User < ApplicationRecord
  # has_many :recipes, foreign_key: 'user_id'
  # has_many :inventories, foreign_key: 'user_id'
  # has_many :foods, foreign_key: 'user_id'
  # attr_accessor :email, :encrypted_password
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :foods, dependent: :destroy
  has_many :recipes, dependent: :destroy

  # validates :Name, presence: true, length: { minimum: 3 }
end
