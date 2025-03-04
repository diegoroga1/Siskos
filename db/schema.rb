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

ActiveRecord::Schema.define(version: 20170114011018) do

  create_table "carts", force: :cascade do |t|
    t.decimal  "total_prize"
    t.integer  "total_amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "hashed_password"
    t.string   "address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cups", force: :cascade do |t|
    t.integer  "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lighters", force: :cascade do |t|
    t.integer  "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pens", force: :cascade do |t|
    t.integer  "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "amount"
    t.decimal  "total_prize"
    t.integer  "shirt_id"
    t.string   "number_of_colors"
    t.text     "observations"
    t.integer  "width"
    t.integer  "heigth"
    t.text     "image"
    t.string   "place_front"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "place_back"
    t.string   "image_json"
    t.index ["shirt_id"], name: "index_products_on_shirt_id"
  end

  create_table "rename_password_to_hashed_passwords", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rename_type_to_shirt_type", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shirts", force: :cascade do |t|
    t.string   "size"
    t.string   "color"
    t.decimal  "prize"
    t.string   "shirt_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
