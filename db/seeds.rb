# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

def parameter_name param_detail
  param_name = 'Nature:'
  param_name << "#{param_detail.category}:" if param_detail.category
  param_name << param_detail.param_class.name
  param_name << "_#{param_detail.kind.name}" if param_detail.kind && param_detail.kind.name && !param_detail.kind.name.empty?
  param_name << "_#{param_detail.case.name}" if param_detail.case && param_detail.case.name && !param_detail.case.name.empty?
  param_name << "_#{param_detail.direction.name}" if param_detail.direction && param_detail.direction.name && !param_detail.direction.name.empty?
  param_name
end

def category_detail id
  return 'DE405' if id == '1'
  return 'INPOP06' if id == '2'
  return 'DE410' if id == '3'
  ''
end

connection = ActiveRecord::Base.connection()
File.open('db/param_db_seed_data.sql', 'r') do |file|
  file.each_line do |line|
    line.strip!
    connection.execute(line) if line.length > 1
  end
end

CSV.open('db/csv/PARAM_REAL.csv').each_with_index do |row, index|
  unless index == 0
    detail = ParameterDetail.create(id: row[0], description: row[17], unit: row[16], source: row[18], expression: row[19],
                                    param_class_id: row[5], kind_id: row[6], case_id: row[8], status_id: row[9], value: row[10],
                                    basic: row[14] == 'basic', scalar: row[15] == 'scalar', notation: row[20],
                                    category: category_detail(row[2]), direction_id: row[7])

    param = Parameter.create(:name => parameter_name(detail), :parameter_detail => detail, protected: false)
    detail.parameter = param
    detail.save!
  end
end