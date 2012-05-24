# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.open('db/csv/PARAM_REAL.csv').each_with_index do |row, index|
  unless index == 0 
    Parameter.create(id: row[0], description: row[17], unit: row[16], source: row[18], expression: row[19],
                     param_class_id: row[5], kind_id: row[6], case_id: row[8], status_id: row[9], value: row[10],
                     basic: row[14] == 'basic', scalar: row[15] == 'scalar', notation: row[20])
  end
end


connection = ActiveRecord::Base.connection()
File.open('db/param_db_seed_data.sql', 'r') do |file|
  file.each_line do |line|
    line.strip!
    connection.execute(line) if line.length > 1
  end
end