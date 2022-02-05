# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_05_193443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exhibits", force: :cascade do |t|
    t.string "name"
    t.string "intro"
    t.boolean "treasure"
    t.integer "horizontal"
    t.integer "vertical"
    t.bigint "map_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["map_id"], name: "index_exhibits_on_map_id"
  end

  create_table "hunts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "exhibit_id"
    t.boolean "is_extra_egg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exhibit_id"], name: "index_hunts_on_exhibit_id"
    t.index ["user_id"], name: "index_hunts_on_user_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.integer "admins_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "file_name"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exhibits", "maps"
  add_foreign_key "hunts", "exhibits"
  add_foreign_key "hunts", "users"
end
