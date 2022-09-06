class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :number_people, numericality: { only_integer: true }
  validates :number_dogs, numericality: { only_integer: true }
end


