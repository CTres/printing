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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130809121824) do

  create_table "addresses", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_city"
    t.string   "address_zip"
    t.string   "address_state"
    t.string   "address_country"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "double_sided"
    t.integer  "quantity"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "quantity"
    t.string   "status"
    t.string   "tracking"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "packagings", :force => true do |t|
    t.integer  "item_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "settings", :force => true do |t|
    t.integer  "item_id"
    t.string   "description"
    t.string   "paper"
    t.float    "width"
    t.float    "length"
    t.boolean  "color"
    t.string   "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "types", :force => true do |t|
    t.integer  "packaging_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "token"
    t.datetime "token_expires_at"
  end

end
