class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :organisation_name
      t.integer :tax_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
