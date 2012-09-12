class RetrofitTimestamps < ActiveRecord::Migration
  def up
    change_table :carts do |t|
      t.timestamps
    end

    change_table :line_items do |t|
      t.timestamps
    end

    change_table :parameters do |t|
      t.timestamps
    end

    change_table :parameter_details do |t|
      t.timestamps
    end

    change_table :proposals do |t|
      t.timestamps
    end

    change_table :users do |t|
      t.timestamps
    end

    [Cart, LineItem, Parameter, ParameterDetail, Proposal, User].each do |clazz|
      clazz.all.each do |record|
        record.update_attributes!(:updated_at => Time.current, :created_at => Time.current)
      end
    end
  end

  def down
    remove_column :carts, created_at
    remove_column :carts, updated_at

    remove_column :line_items, created_at
    remove_column :line_items, updated_at

    remove_column :parameters, created_at
    remove_column :parameters, updated_at

    remove_column :parameter_details, created_at
    remove_column :parameter_details, updated_at

    remove_column :proposals, created_at
    remove_column :proposals, updated_at

    remove_column :users, created_at
    remove_column :users, updated_at
  end
end
