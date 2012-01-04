class RemoveVenueIdFromRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :venue_id
  end

  def down
    add_column :restaurants, :venue_id, :integer
  end
end
