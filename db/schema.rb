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

ActiveRecord::Schema.define(version: 2018_07_13_022823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tastings", force: :cascade do |t|
    t.string "name"
    t.boolean "reservation_required?"
    t.boolean "is_private?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "winery_id"
    t.integer "price_min_cents", default: 0, null: false
    t.integer "price_max_cents", default: 0, null: false
    t.index ["winery_id"], name: "index_tastings_on_winery_id"
  end

  create_table "wineries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tastings", "wineries"
end
