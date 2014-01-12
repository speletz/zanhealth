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

ActiveRecord::Schema.define(version: 20140112164524) do

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_histories", force: true do |t|
    t.integer  "item_id"
    t.datetime "datetime"
    t.integer  "status"
    t.integer  "utilization"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "model_id"
    t.string   "serial_number"
    t.integer  "year_manufactured"
    t.string   "funding"
    t.date     "date_received"
    t.date     "warranty_expire"
    t.date     "contract_expire"
    t.text     "warranty_notes"
    t.string   "service_agent"
    t.integer  "location_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset_id"
    t.string   "item_type"
  end

  create_table "languages", force: true do |t|
    t.string   "english"
    t.string   "swahili"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "room"
    t.integer  "floor"
    t.string   "building"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id"
  end

  create_table "models", force: true do |t|
    t.string   "model_name"
    t.string   "manufacturer_name"
    t.string   "vendor_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "needs", force: true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.integer  "model_id"
    t.integer  "quantity"
    t.integer  "urgency"
    t.text     "reason"
    t.text     "remarks"
    t.integer  "stage"
    t.date     "date_requested"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "texts", force: true do |t|
    t.text     "content"
    t.string   "number"
    t.integer  "work_request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "encrypted_password"
    t.integer  "role_id"
    t.datetime "created"
    t.datetime "modified"
    t.integer  "telephone_num"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id"
    t.string   "language"
    t.string   "name"
  end

  create_table "work_request_comments", force: true do |t|
    t.datetime "datetime_stamp"
    t.integer  "work_request_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_requests", force: true do |t|
    t.datetime "date_requested"
    t.datetime "date_expire"
    t.datetime "date_completed"
    t.integer  "request_type"
    t.integer  "item_id"
    t.integer  "cost"
    t.text     "description"
    t.integer  "status"
    t.integer  "owner_id"
    t.integer  "requester_id"
    t.text     "cause_description"
    t.text     "action_taken"
    t.text     "prevention_taken"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
