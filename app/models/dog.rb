class Dog < ApplicationRecord
  belongs_to :user
  has_many :dog_categories
  has_many :categories, through: :dog_categories
end
