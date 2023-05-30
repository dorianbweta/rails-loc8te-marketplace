class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :category
      t.string :driver_name
      t.integer :base_price

      t.timestamps
    end
  end
end
