class AddBusinessIdToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicles, :business_id, null: false, foreign_key: true
  end
end
