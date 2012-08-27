class RemoveProtectedFromParameterDetails < ActiveRecord::Migration
  def up
    remove_column :parameter_details, :protected
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
