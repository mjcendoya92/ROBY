class Booking < ApplicationRecord
  belongs_to :user, :activity
end
