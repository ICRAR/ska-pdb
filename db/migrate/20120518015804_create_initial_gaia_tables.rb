class CreateInitialGaiaTables < ActiveRecord::Migration
  def change
    create_table :param_classes do |t|
      t.string :name, :limit => 64
    end

    create_table :kinds do |t|
      t.string :name, :limit => 64
    end

    create_table :statuses do |t|
      t.string :name, :limit => 12
    end

    create_table :cases do |t|
      t.string :name, :limit => 64
    end

    add_column :parameters, :param_class_id, :integer
    add_column :parameters, :kind_id, :integer
    add_column :parameters, :case_id, :integer
    add_column :parameters, :status_id, :integer
    add_column :parameters, :value, :string, :limit => 1000
    add_column :parameters, :basic, :boolean
    add_column :parameters, :scalar, :boolean
    add_column :parameters, :notation, :string, :limit => 255
  end
end
