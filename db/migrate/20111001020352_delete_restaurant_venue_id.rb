class DeleteRestaurantVenueId < ActiveRecord::Migration
  def up
    remove_column :restaurants, :venue_id
  end

  def down
  end
end
