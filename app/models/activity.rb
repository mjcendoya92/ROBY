class Activity < ApplicationRecord
  belongs_to :user
  has_many :activity_categories, dependent: :destroy
  has_many :categories, through: :activity_categories
  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  has_one :chatroom, dependent: :destroy
  # accepts_nested_attributes_for :activity_categories

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 15 }
  validates :location, presence: false
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true, comparison: { greater_than: :start_time }
  validates :dog_limit, presence: true, numericality: { only_integer: true }
  validates :people_limit, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { only_integer: true }
end
