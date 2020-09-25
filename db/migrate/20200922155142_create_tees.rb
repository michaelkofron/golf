class CreateTees < ActiveRecord::Migration[6.0]
  def change
    create_table :tees do |t|
      t.string :name
      t.integer :hole_id
      t.float :rating
      t.integer :slope
      t.integer :distance
    end
  end
end
