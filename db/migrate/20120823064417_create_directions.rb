class CreateDirections < ActiveRecord::Migration
  def up
    create_table :directions do |t|
      t.string :name, :limit => 64
    end

    connection = ActiveRecord::Base.connection()
    connection.execute("insert into DIRECTIONS values (0, NULL);")
    connection.execute("insert into DIRECTIONS values (1, 'AL');")
    connection.execute("insert into DIRECTIONS values (2, 'AC');")
  end

  def down
    drop_table :directions
  end
end
