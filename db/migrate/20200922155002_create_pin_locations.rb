class CreatePinLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :pin_locations do |t|
      t.integer :location_number
      t.integer :hole_id
      t.timestamps

      #pin location belongs to a hole which belongs to a round, so rounds do not need pin location specified
    end
  end
end
