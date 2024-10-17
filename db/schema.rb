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

ActiveRecord::Schema[7.0].define(version: 2024_10_15_172941) do
  create_table "line_graphs", force: :cascade do |t|
    t.string "name"
    t.json "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pipeline_stages", force: :cascade do |t|
    t.string "label"
    t.integer "percent"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_categories", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_entries", force: :cascade do |t|
    t.integer "ticket_category_id", null: false
    t.string "avatar"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["ticket_category_id"], name: "index_ticket_entries_on_ticket_category_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "value"
    t.string "icon"
    t.string "variant"
    t.string "size"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ticket_entries", "ticket_categories"
end
