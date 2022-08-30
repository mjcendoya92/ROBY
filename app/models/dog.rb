class Dog < ApplicationRecord




  GENDER = [male, female, diverse]

  validation :name, presence: true
  validation :breed, presence: true
  validation :age, presence: true, numericality: { only_integer: true }
  validation :sex, presence: true, inclusion: { in: GENDER }
  validation :description, presence: true, length: { minimum: 15 }
end
