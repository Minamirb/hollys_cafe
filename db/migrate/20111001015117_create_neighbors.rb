class CreateNeighbors < ActiveRecord::Migration
  def change
    create_table :neighbors do |t|
      t.integer :venue_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
