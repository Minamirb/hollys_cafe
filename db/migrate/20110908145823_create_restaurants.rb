class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :name
      t.integer :venue_id
      t.string :url
      t.string :comment

      t.timestamps
    end
  end
end
