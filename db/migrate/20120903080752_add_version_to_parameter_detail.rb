class AddVersionToParameterDetail < ActiveRecord::Migration
  def up
    add_column :parameter_details, :version, :integer, :default => 0

    ParameterDetail.all.each do |detail|
      detail.update_attributes!(:version => 0)
    end
  end

  def down
    remove_column :parameter_details, :version, :integer
  end
end
