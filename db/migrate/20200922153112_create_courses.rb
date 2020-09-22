class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :sub_course_name
      t.integer :hole_count
    end
  end
end
