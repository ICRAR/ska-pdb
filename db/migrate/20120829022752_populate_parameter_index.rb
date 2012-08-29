class PopulateParameterIndex < ActiveRecord::Migration
  def up
    Parameter.all.each do |p|
      index = ParameterIndex.build_from_parameter(p)
      index.save!
    end
  end

  def down
    ParameterIndex.delete_all
  end
end
