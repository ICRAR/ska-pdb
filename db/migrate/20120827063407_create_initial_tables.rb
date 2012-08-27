class CreateInitialTables < ActiveRecord::Migration
  def up
    if Parameter.table_exists?
      raise "Due to a complete overhaul of the datamodel, a reinitialization of the db is required. This migration will initialize the model, run 'rake db:drop' before running this migration"
    end

    create_table "carts", :force => true do |t|
      t.timestamp
    end

    create_table "line_items", :force => true do |t|
      t.integer  "parameter_id"
      t.integer  "cart_id"
      t.timestamp
    end

    create_table "cases", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "directions", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "kinds", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "param_classes", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "scope0s", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "scope1s", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "scope2s", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "scope3s", :force => true do |t|
      t.string "name", :limit => 64
    end

    create_table "parameter_details", :force => true do |t|
      t.string   "description",    :limit => 10000
      t.string   "unit",           :limit => 10000
      t.string   "source",         :limit => 10000
      t.string   "expression",     :limit => 10000
      t.integer  "param_class_id"
      t.integer  "kind_id"
      t.integer  "case_id"
      t.integer  "status_id"
      t.integer  "direction_id"
      t.integer  "parameter_id"
      t.integer  "scope0_id"
      t.integer  "scope1_id"
      t.integer  "scope2_id"
      t.integer  "scope3_id"
      t.float   "value"
      t.string   "value_s",        :limit => 1000
      t.string   "value_type"
      t.boolean  "basic"
      t.boolean  "scalar"
      t.string   "notation"
      t.string   "format"
      t.string   "lastmoddate"

      t.timestamp
    end

    create_table "parameters", :force => true do |t|
      t.string   "name"
      t.integer  "parameter_detail_id"
      t.boolean  "protected"
      t.timestamp
    end

    create_table "statuses", :force => true do |t|
      t.string "name", :limit => 12
    end

    create_table "users", :force => true do |t|
      t.string   "email",                                 :default => "", :null => false
      t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",                         :default => 0
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.boolean  "admin"
      t.string   "name"
      t.string   "username"
      t.timestamp
    end

    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
    add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
