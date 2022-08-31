class Activity < ApplicationRecord

  belongs_to :user
  has_many :activity_categories, dependent: :destroy
  has_many :categories, through: :activity_categories
  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 15 }
  validates :location, presence: true
  validates :start_date, :end_date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true, comparison: { greater_than: :start_time }

  #validates :category # inclusion to be created

  validates :dog_limit, presence: true, numericality: { only_integer: true }
  validates :people_limit, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { only_integer: true }

end
