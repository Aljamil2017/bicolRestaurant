class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :r_username
      t.string :r_password
      t.string :restaurant_name
      t.string :r_contact
      t.string :r_address
      t.string :r_style
      t.string :r_email
      t.string :r_start_time
      t.string :r_close_time
      t.string :r_longitude
      t.string :r_latitude

      t.timestamps null: false
    end
  end
end
