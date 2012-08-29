class CreateParameterIndex < ActiveRecord::Migration
  def change
    create_table "parameter_indices", :force => true do |t|
      t.integer  "parameter_id"
      t.string  "search_text", :limit => 100000
      t.timestamp
    end
  end
end
