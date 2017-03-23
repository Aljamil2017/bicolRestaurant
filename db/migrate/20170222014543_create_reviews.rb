class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
