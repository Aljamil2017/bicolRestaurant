class AddIndexReviewsCustomerRestaurant < ActiveRecord::Migration
  def change
  		add_reference :reviews, :customer, index: true
  		add_reference :reviews, :restaurant, index: true
  end
end
