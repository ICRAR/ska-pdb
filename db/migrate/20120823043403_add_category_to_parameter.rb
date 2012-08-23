class AddCategoryToParameter < ActiveRecord::Migration
  def up
    add_column :parameters, :category, :string

    (190..233).each do |id|
      p = Parameter.find(id)
      p.category = 'DE405'
      p.save!
    end

    (234..295).each do |id|
      p = Parameter.find(id)
      p.category = 'INPOP06'
      p.save!
    end

    [324, 326, 327, 328, 330, 331, 332, 333, 334].each do |id|
      p = Parameter.find(id)
      p.category = 'DE410'
      p.save!
    end
  end

  def down
    remove_column :parameters, :category
  end
end
