# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151015223422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_apps", force: :cascade do |t|
    t.string   "first_name",        null: false
    t.string   "status",            null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "notes"
    t.integer  "position_id"
    t.string   "last_name",         null: false
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "city"
    t.boolean  "citizen_resident"
    t.string   "highest_education"
    t.string   "school_name"
    t.string   "education_yrs"
    t.boolean  "military"
    t.string   "ref1_name"
    t.string   "ref1_phone"
    t.string   "ref1_relation"
    t.string   "ref2_name"
    t.string   "ref2_phone"
    t.string   "ref2_relation"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "session_token",   null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "work_histories", force: :cascade do |t|
    t.string   "employer_name",  null: false
    t.string   "employer_city"
    t.string   "employer_phone"
    t.string   "position"
    t.text     "duties"
    t.string   "supervisor"
    t.time     "start_date"
    t.time     "end_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
