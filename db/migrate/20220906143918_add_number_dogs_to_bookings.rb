class AddNumberDogsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :number_dogs, :integer
  end
end
