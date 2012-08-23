class AddDirectionIdToParameter < ActiveRecord::Migration
  def up
    add_column :parameters, :direction_id, :integer

    [738, 740].each do |id|
      p = Parameter.find(id)
      p.direction_id = 1
      p.save!
    end

    [739, 741].each do |id|
      p = Parameter.find(id)
      p.direction_id = 2
      p.save!
    end
  end

  def down
    remove_column :parameters, :direction_id
  end
end
