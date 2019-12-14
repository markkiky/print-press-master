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

ActiveRecord::Schema.define(version: 2019_09_19_062925) do

  create_table "liqours", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "serial_number"
    t.string "control_number"
    t.string "business_name"
    t.string "bid_number"
    t.string "lid"
    t.string "licence_type"
    t.decimal "amount", precision: 11, scale: 2
    t.date "date_paid"
    t.boolean "printed", default: false
    t.string "bank_transaction_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_of_license"
    t.text "exceptions"
    t.string "physical_address"
    t.string "plot_number"
    t.boolean "mark_as_printed"
    t.bigint "schedule_id"
    t.boolean "is_renewal", default: false
    t.date "valid_from"
    t.date "issue_date"
    t.index ["schedule_id"], name: "index_liqours_on_schedule_id"
  end

  create_table "schedules", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "name"
    t.text "exception"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "liqours", "schedules"
end
