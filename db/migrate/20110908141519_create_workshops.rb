class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.integer :number
      t.date :date_on
      t.integer :venue_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
