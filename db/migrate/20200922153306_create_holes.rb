class CreateHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :holes do |t|
      t.integer :course_id
      t.integer :round_id
      t.integer :number
      t.integer :par
      t.string :hole_name
      t.integer :mens_handicap
      t.integer :womens_handicap
      t.timestamps
    end
  end
end
