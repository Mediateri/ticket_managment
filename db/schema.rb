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

ActiveRecord::Schema.define(version: 2023_01_18_084759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "plate_no", null: false
    t.string "no_seats", null: false
    t.bigint "schedule_id", null: false
    t.string "driver", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_cars_on_schedule_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "start_point", null: false
    t.string "end_point", null: false
    t.decimal "cost", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "route_id", null: false
    t.datetime "time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["route_id"], name: "index_schedules_on_route_id"
  end

  create_table "stops", force: :cascade do |t|
    t.string "name", null: false
    t.string "from_point", null: false
    t.decimal "cost", precision: 10, scale: 2
    t.bigint "route_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["route_id"], name: "index_stops_on_route_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name", null: false
    t.string "from", null: false
    t.string "to", null: false
    t.decimal "price", precision: 10, scale: 2
    t.bigint "schedule_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_tickets_on_schedule_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cars", "schedules"
  add_foreign_key "schedules", "routes"
  add_foreign_key "stops", "routes"
  add_foreign_key "tickets", "schedules"
end
