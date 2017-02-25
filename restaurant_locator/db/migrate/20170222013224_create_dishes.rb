class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.string :dish_price

      t.timestamps null: false
    end
  end
end
