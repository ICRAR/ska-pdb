class RemoveLastmoddate < ActiveRecord::Migration
  def up
    remove_column :parameter_details, :lastmoddate
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
