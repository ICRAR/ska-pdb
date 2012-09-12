class RemoveStatus < ActiveRecord::Migration
  class Status < ActiveRecord::Base
  end

  class ParameterDetail < ActiveRecord::Base
    belongs_to :status
    belongs_to :parameter
  end

  def up
    non_confirmed_parameters = ParameterDetail.select { |p| p.status != Status.find_by_name('CONF')}
    non_confirmed_parameters.each do |detail|
      parameter = detail.parameter
      parameter.parameter_index.destroy
      parameter.destroy
      detail.destroy
    end

    remove_column :parameter_details, :status_id
    drop_table :statuses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
