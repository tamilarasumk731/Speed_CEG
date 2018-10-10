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

ActiveRecord::Schema.define(version: 2018_10_10_180808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diseases", force: :cascade do |t|
    t.string "name", null: false
    t.text "medicines", null: false
    t.text "symptoms", null: false
    t.text "prevention", null: false
    t.string "disease_type", null: false
    t.string "when", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_diseases_on_name", unique: true
  end

  create_table "fishermen", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age"
    t.string "team_name", null: false
    t.string "contact_no", null: false
    t.text "address", null: false
    t.boolean "is_fishing", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_no"], name: "index_fishermen_on_contact_no", unique: true
    t.index ["name"], name: "index_fishermen_on_name"
  end

  create_table "maps", force: :cascade do |t|
    t.string "name", null: false
    t.string "contact_no", null: false
    t.string "latitude", null: false
    t.string "longitude", null: false
    t.text "address"
    t.boolean "loc_type", default: false
    t.text "description", null: false
    t.integer "count"
    t.boolean "is_rescued", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_no"], name: "index_maps_on_contact_no", unique: true
    t.index ["name"], name: "index_maps_on_name"
  end

end
