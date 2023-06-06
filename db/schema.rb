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

ActiveRecord::Schema[7.0].define(version: 2023_06_06_141131) do
  create_table "days", force: :cascade do |t|
    t.integer "week_id"
    t.integer "day_of_week"
    t.time "work_start"
    t.time "work_end"
    t.integer "break_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "working_days"
    t.integer "sick_days"
    t.integer "vacation_days"
  end

  create_table "weeks", force: :cascade do |t|
    t.integer "number"
    t.integer "month"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "month_year"
    t.integer "employee_id", null: false
    t.index ["employee_id"], name: "index_weeks_on_employee_id"
  end

  add_foreign_key "weeks", "employees"
end
