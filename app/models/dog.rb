class Dog < ApplicationRecord
  has_one_attached :photo
  has_many_attached :extra_photos

  belongs_to :user
  has_many :dog_categories
  has_many :categories, through: :dog_categories

  GENDER = ["male", "female"]

  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :sex, presence: true, inclusion: { in: GENDER }
  validates :description, presence: true, length: { minimum: 15 }
end
