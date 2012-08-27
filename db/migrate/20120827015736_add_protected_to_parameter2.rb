class AddProtectedToParameter2 < ActiveRecord::Migration
  def change
    add_column :parameters, :protected, :boolean
  end
end
