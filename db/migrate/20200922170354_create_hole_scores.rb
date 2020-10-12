class CreateHoleScores < ActiveRecord::Migration[6.0]
  def change
    create_table :hole_scores do |t|
      t.integer :user_id
      t.integer :hole_id
      t.integer :round_id
      t.integer :score
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
