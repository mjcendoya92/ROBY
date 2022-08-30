class Dog < ApplicationRecord

  belongs_to :user
  has_many :dog_categories
  has_many :categories, through: :dog_categories

  GENDER = [male, female]

  validation :name, presence: true
  validation :breed, presence: true
  validation :age, presence: true, numericality: { only_integer: true }
  validation :sex, presence: true, inclusion: { in: GENDER }
  validation :description, presence: true, length: { minimum: 15 }

end
