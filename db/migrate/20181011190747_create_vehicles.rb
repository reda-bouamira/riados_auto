class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.references :car, foreign_key: true
      t.integer :year
      t.string :color
      t.references :transmission, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
