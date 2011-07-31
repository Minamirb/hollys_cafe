class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :address
      t.string :name
      t.integer :venue_id
      t.string :url
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
