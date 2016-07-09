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

ActiveRecord::Schema.define(version: 20160709130951) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.integer  "zip"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "space"
    t.integer  "organization"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.integer  "store"
    t.string   "title"
    t.integer  "price_per_day"
    t.integer  "price_per_week"
    t.integer  "price_per_month"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer  "address"
    t.integer  "organization"
    t.string   "title"
    t.time     "opening"
    t.time     "closing"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
