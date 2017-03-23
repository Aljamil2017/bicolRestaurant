class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :c_username
      t.string :c_password
      t.string :c_firstname
      t.string :c_middlename
      t.string :c_lastname
      t.string :c_address
      t.string :c_contact
      t.string :c_email
      t.string :c_longitude
      t.string :c_latitude

      t.timestamps null: false
    end
  end
end
