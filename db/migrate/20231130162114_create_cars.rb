class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model, null: false
      t.integer :seats, null: false
      t.text :description, null: false
      t.float :price_per_day, null: false
      t.string :vehicle_type, null: false
      t.boolean :removed, default: false, null: false
      t.timestamps
    end
  end
end
