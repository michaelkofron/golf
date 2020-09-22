class CreateHoleScores < ActiveRecord::Migration[6.0]
  def change
    create_table :hole_scores do |t|
      t.integer :user_id
      t.integer :hole_id
      t.integer :score
    end
  end
end
