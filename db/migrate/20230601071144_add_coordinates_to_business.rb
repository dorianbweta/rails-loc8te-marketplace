class AddCoordinatesToBusiness < ActiveRecord::Migration[7.0]
  def change
    add_column :businesses, :latitude, :float
    add_column :businesses, :longitude, :float
    add_column :businesses, :address, :string
  end
end
