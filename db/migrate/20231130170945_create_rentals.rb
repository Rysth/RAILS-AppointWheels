class CreateRentals < ActiveRecord::Migration[7.1]
  def change
    create_table :rentals do |t|
      t.float :total_price, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :city, null: false
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
