class CreateMenutypes < ActiveRecord::Migration
  def change
    create_table :menutypes do |t|
      t.string :menu_name

      t.timestamps null: false
    end
  end
end
