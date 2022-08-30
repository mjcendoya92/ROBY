class Category < ApplicationRecord

  has_many :dog_categories
  has_many :activity_categories
  has_many :dogs, through: :dog_categories
  has_many :activities, through: :activity_categories

  validates :name, presence: true

end
