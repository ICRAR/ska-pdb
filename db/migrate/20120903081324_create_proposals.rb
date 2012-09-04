class CreateProposals < ActiveRecord::Migration
  def change
    create_table "proposals", :force => true do |t|
      t.string   "name"
      t.integer  "parameter_detail_id"
      t.boolean  "protected"
      t.integer  "user_id"
      t.timestamp
    end
  end
end
