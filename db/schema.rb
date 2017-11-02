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

ActiveRecord::Schema.define(version: 20171102043129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guitar_accessories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "guitarPick"
    t.bigint "guitar_id"
    t.string "strapType"
    t.index ["guitar_id"], name: "index_guitar_accessories_on_guitar_id"
  end

  create_table "guitar_transactions", force: :cascade do |t|
    t.date "buyDate"
    t.date "sellDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "guitar_id"
    t.index ["guitar_id"], name: "index_guitar_transactions_on_guitar_id"
  end

  create_table "guitars", force: :cascade do |t|
    t.string "brandName"
    t.string "modelName"
    t.string "typeName"
    t.string "noOfStrings"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "serial"
    t.integer "stringsNo"
  end

  add_foreign_key "guitar_accessories", "guitars"
  add_foreign_key "guitar_transactions", "guitars"
end
