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

ActiveRecord::Schema.define(:version => 20120806030202) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "kinds", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "line_items", :force => true do |t|
    t.integer  "parameter_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "param_classes", :force => true do |t|
    t.string "name", :limit => 64
  end

  create_table "parameters", :force => true do |t|
    t.string   "description",    :limit => 10000
    t.string   "unit",           :limit => 10000
    t.string   "source",         :limit => 10000
    t.string   "expression",     :limit => 10000
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "param_class_id"
    t.integer  "kind_id"
    t.integer  "case_id"
    t.integer  "status_id"
    t.string   "value",          :limit => 1000
    t.boolean  "basic"
    t.boolean  "scalar"
    t.string   "notation"
  end

  create_table "statuses", :force => true do |t|
    t.string "name", :limit => 12
  end

end
