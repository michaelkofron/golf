class CreateShots < ActiveRecord::Migration[6.0]
  def change
    create_table :shots do |t|
      t.integer :hole_id
      t.integer :user_id
      t.integer :round_id
      t.integer :shot_number
      t.string :club_selection
      t.decimal :latitude, precision: 17, scale: 15
      t.decimal :longitude, precision: 18, scale: 15
    end
  end
end
