class Activity < ApplicationRecord




  validation :name, presence: true
  validation :description, presence: true, lenght: { minimum: 15 }
  validation :location, presence: true
  validation :start_date, :end_date, presence: true
  validation :start_time, presence: true
  validation :end_time, presence: true, comparison: { greater_than: :start_time }
  validation :category # inclusion to be created
  validation :dog_limit, presence: true, numericality: { only_integer: true }
  validation :people_limit, presence: true, numericality: { only_integer: true }
  validation :price, presence: true, numericality: { only_integer: true }
end
