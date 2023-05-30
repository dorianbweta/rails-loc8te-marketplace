class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.time :start_date
      t.time :end_date
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
