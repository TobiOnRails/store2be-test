class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :space
      t.integer :organization
      t.date :start_date
      t.date :end_date
      t.integer :price

      t.timestamps
    end
  end
end
