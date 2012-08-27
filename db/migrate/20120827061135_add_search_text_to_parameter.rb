class AddSearchTextToParameter < ActiveRecord::Migration
  def up
    add_column :parameters, :search_text, :string, :limit => 100000
  end

  def down
    remove_column :parameters, :search_text
  end
end
