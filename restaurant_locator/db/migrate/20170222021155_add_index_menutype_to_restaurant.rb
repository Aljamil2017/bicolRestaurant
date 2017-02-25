class AddIndexMenutypeToRestaurant < ActiveRecord::Migration
  def change
	add_reference :menutypes, :restaurant, index: true
  end
end
