class CreateParameter < ActiveRecord::Migration
  def parameter_name param_detail
    param_name = 'Nature:'
    param_name << "#{param_detail.category}:" if param_detail.category
    param_name << param_detail.param_class.name
    param_name << "_#{param_detail.kind.name}" if param_detail.kind && param_detail.kind.name && !param_detail.kind.name.empty?
    param_name << "_#{param_detail.case.name}" if param_detail.case && param_detail.case.name && !param_detail.case.name.empty?
    param_name << "_#{param_detail.direction.name}" if param_detail.direction && param_detail.direction.name && !param_detail.direction.name.empty?
    param_name
  end

  def up
    create_table :parameters do |t|
      t.string :name
      t.integer :parameter_detail_id
      t.timestamps
    end

    add_column :parameter_details, :parameter_id, :integer

    ParameterDetail.all.each do |param_detail|
      param = Parameter.create(:name => parameter_name(param_detail), :parameter_detail => param_detail)
      param_detail.parameter = param
      param_detail.save!
    end
  end

  def down
    remove_column :parameter_details, :parameter_id
    drop_table :parameters
  end
end
