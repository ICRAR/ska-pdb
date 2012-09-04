require 'csv'

class LoadInitialDataIntoDb < ActiveRecord::Migration
  class Parameter < ActiveRecord::Base
    has_many :parameter_details
    belongs_to :parameter_detail
  end

  class ParameterDetail < ActiveRecord::Base
    belongs_to :scope0
    belongs_to :scope1
    belongs_to :scope2
    belongs_to :scope3
    belongs_to :case
    belongs_to :status
    belongs_to :param_class
    belongs_to :kind
    belongs_to :direction
    belongs_to :parameter
    has_many :line_items
  end

  def parameter_name param_detail
    param_name = "#{param_detail.scope0.name}:"
    param_name << "#{param_detail.scope1.name}:" if param_detail.scope1 && param_detail.scope1.name && !param_detail.scope1.name.empty?
    param_name << param_detail.param_class.name
    param_name << "_#{param_detail.kind.name}" if param_detail.kind && param_detail.kind.name && !param_detail.kind.name.empty?
    param_name << "_#{param_detail.case.name}" if param_detail.case && param_detail.case.name && !param_detail.case.name.empty?
    param_name << "_#{param_detail.direction.name}" if param_detail.direction && param_detail.direction.name && !param_detail.direction.name.empty?
    param_name
  end

  def up
    connection = ActiveRecord::Base.connection()
    File.open('db/migrate/20120827065628_seed_data.sql', 'r') do |file|
      file.each_line do |line|
        line.strip!
        connection.execute(line) if line.length > 1
      end
    end

    CSV.open('db/migrate/20120827065628_seed_data.csv').each_with_index do |row, index|
      unless index == 0
        detail = ParameterDetail.create(id: row[0],
                                        scope0_id: row[1],
                                        scope1_id: row[2],
                                        scope2_id: row[3],
                                        scope3_id: row[4],
                                        param_class_id: row[5],
                                        kind_id: row[6],
                                        direction_id: row[7],
                                        case_id: row[8],
                                        status_id: row[9],
                                        value: row[10],
                                        value_s: row[11],
                                        format: row[12],
                                        value_type: row[13],
                                        basic: row[14] == 'basic',
                                        scalar: row[15] == 'scalar',
                                        unit: row[16],
                                        description: row[17],
                                        source: row[18],
                                        expression: row[19],
                                        notation: row[20],
                                        lastmoddate: row[21])

        param = Parameter.create(:name => parameter_name(detail), :parameter_detail => detail, :protected => false)
        detail.parameter = param
        detail.save!
      end
    end
  end

  def down
  end
end
