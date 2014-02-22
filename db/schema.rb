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

ActiveRecord::Schema.define(version: 20140222070907) do

  create_table "bmet_item_histories", force: true do |t|
    t.integer  "bmet_item_id"
    t.datetime "datetime"
    t.integer  "status"
    t.integer  "utilization"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bmet_items", force: true do |t|
    t.integer  "model_id"
    t.string   "serial_number"
    t.integer  "year_manufactured"
    t.string   "funding"
    t.date     "date_received"
    t.date     "warranty_expire"
    t.date     "contract_expire"
    t.text     "warranty_notes"
    t.string   "service_agent"
    t.integer  "department_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset_id"
    t.string   "item_type"
    t.string   "location"
  end

  create_table "bmet_labor_hours", force: true do |t|
    t.datetime "date_started"
    t.integer  "duration"
    t.integer  "technician_id"
    t.integer  "bmet_work_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bmet_needs", force: true do |t|
    t.string   "name"
    t.integer  "department_id"
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

  create_table "bmet_work_order_comments", force: true do |t|
    t.datetime "datetime_stamp"
    t.integer  "bmet_work_order_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bmet_work_orders", force: true do |t|
    t.datetime "date_requested"
    t.datetime "date_expire"
    t.datetime "date_completed"
    t.integer  "request_type"
    t.integer  "bmet_item_id"
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

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id"
  end

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_labor_hours", force: true do |t|
    t.datetime "date_started"
    t.integer  "duration"
    t.integer  "technician_id"
    t.integer  "work_request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_preventative_maintenances", force: true do |t|
    t.datetime "last_date_checked"
    t.integer  "days"
    t.integer  "weeks"
    t.integer  "months"
    t.datetime "next_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_work_order_comments", force: true do |t|
    t.datetime "datetime_stamp"
    t.integer  "work_request_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_work_orders", force: true do |t|
    t.datetime "date_requested"
    t.datetime "date_expire"
    t.datetime "date_completed"
    t.integer  "request_type"
    t.integer  "item"
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

  create_table "languages", force: true do |t|
    t.string   "english"
    t.string   "swahili"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "model_name"
    t.string   "manufacturer_name"
    t.string   "vendor_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "texts", force: true do |t|
    t.text     "content"
    t.string   "number"
    t.integer  "bmet_work_order_id"
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

end
