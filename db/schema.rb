# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_22_170428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "sub_course_name"
    t.integer "hole_count"
  end

  create_table "hole_scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hole_id"
    t.integer "score"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "holes", force: :cascade do |t|
    t.integer "course_id"
    t.integer "round_id"
    t.integer "number"
    t.integer "par"
    t.string "hole_name"
    t.integer "mens_handicap"
    t.integer "womens_handicap"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pin_locations", force: :cascade do |t|
    t.integer "location_number"
    t.integer "hole_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "course_id"
    t.integer "user_id"
    t.integer "score"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shots", force: :cascade do |t|
    t.integer "hole_id"
    t.integer "user_id"
    t.integer "round_id"
    t.integer "shot_number"
    t.string "club_selection"
    t.decimal "latitude", precision: 17, scale: 15
    t.decimal "longitude", precision: 18, scale: 15
  end

  create_table "tees", force: :cascade do |t|
    t.string "name"
    t.integer "hole_id"
    t.float "rating"
    t.integer "slope"
    t.integer "distance"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
