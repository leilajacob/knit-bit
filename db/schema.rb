# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151123143017) do

  create_table "sweaters", force: :cascade do |t|
    t.text     "full_pattern"
    t.string   "pattern_repeat"
    t.string   "current_size"
    t.string   "decrease_row"
    t.string   "increase_row"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tops", force: :cascade do |t|
    t.string   "current_size"
    t.float    "gauge"
    t.string   "stitch"
    t.integer  "number_of_sts"
    t.string   "pattern_repeat"
    t.string   "instructions"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
