class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validation :number_people, numericality: { only_integer: true }

end
