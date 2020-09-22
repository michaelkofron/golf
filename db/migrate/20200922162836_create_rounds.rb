class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.integer :course_id
      t.integer :user_id
      t.integer :score
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
