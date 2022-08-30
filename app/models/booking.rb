class Booking < ApplicationRecord
  belongs_to :user, :activity




  validation :number_people, numericality: { only_integer: true }
end
