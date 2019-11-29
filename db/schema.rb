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

ActiveRecord::Schema.define(version: 2019_11_29_170539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "key_results", force: :cascade do |t|
    t.text "description"
    t.string "due_date"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "objective_id", null: false
    t.index ["objective_id"], name: "index_key_results_on_objective_id"
    t.index ["user_id"], name: "index_key_results_on_user_id"
  end

  create_table "objectives", force: :cascade do |t|
    t.text "description"
    t.float "score"
    t.string "label"
    t.string "type"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_objectives_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "key_results", "objectives"
end
