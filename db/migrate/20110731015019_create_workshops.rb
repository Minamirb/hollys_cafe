class CreateWorkshops < ActiveRecord::Migration
  def self.up
    create_table :workshops do |t|
      t.integer :number
      t.date :date_on
      t.integer :venue_id
      t.integer :restaurant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :workshops
  end
end
