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

ActiveRecord::Schema.define(version: 20161111042239) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "par"
    t.integer  "yards"
    t.decimal  "course_rating"
    t.decimal  "user_average"
    t.integer  "slope"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "outings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time     "date"
  end

  create_table "rounds", force: :cascade do |t|
    t.time     "timestamp"
    t.integer  "score"
    t.integer  "course_id",  null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "outing_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.decimal  "handicap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
