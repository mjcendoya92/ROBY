class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :location
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :category
      t.integer :dog_limit
      t.integer :people_limit
      t.string :status
      t.integer :price

      t.timestamps
    end
  end
end
