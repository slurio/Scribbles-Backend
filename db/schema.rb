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

ActiveRecord::Schema.define(version: 2020_09_28_180313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "background_canvases", force: :cascade do |t|
    t.string "background_style"
    t.integer "z_index"
    t.bigint "scribble_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["scribble_id"], name: "index_background_canvases_on_scribble_id"
  end

  create_table "circle_canvases", force: :cascade do |t|
    t.integer "posX"
    t.integer "posY"
    t.integer "dx"
    t.integer "dy"
    t.string "color"
    t.string "octave"
    t.string "note"
    t.integer "z_index"
    t.integer "radius"
    t.bigint "scribble_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["scribble_id"], name: "index_circle_canvases_on_scribble_id"
  end

  create_table "scribbles", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_scribbles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "background_canvases", "scribbles"
  add_foreign_key "circle_canvases", "scribbles"
  add_foreign_key "scribbles", "users"
end
