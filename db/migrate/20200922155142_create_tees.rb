class CreateTees < ActiveRecord::Migration[6.0]
  def change
    create_table :tees do |t|
      t.string :name
      t.integer :hole_id
      t.decimal :rating, precision: 3, scale: 1  #3 signifant digits, one decimal place
      t.integer :slope
      t.integer :distance
    end
  end
end
