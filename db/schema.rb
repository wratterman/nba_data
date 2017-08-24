# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170824203731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "person_id"
    t.string "nba_team_id"
    t.date "date_of_birth_utc"
    t.string "height_in_feet"
    t.string "height_in_inches"
    t.string "weight_in_ounds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "nba_team_id"
    t.string "city"
    t.string "full_name"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
