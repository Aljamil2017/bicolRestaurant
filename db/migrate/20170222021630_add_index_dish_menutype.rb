class AddIndexDishMenutype < ActiveRecord::Migration
  def change
  	add_reference :dishes, :menutype, index: true
  end
end
