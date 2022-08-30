class Activity < ApplicationRecord
  belongs_to :user
  has_many :activity_categories, dependent: :destroy
  has_many :categories, through: :activity_categories
  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
