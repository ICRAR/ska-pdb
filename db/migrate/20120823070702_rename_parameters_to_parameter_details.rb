class RenameParametersToParameterDetails < ActiveRecord::Migration
  def change
    rename_table :parameters, :parameter_details
  end
end
