class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy

  def add_parameter(parameter_id)
    current_param = line_items.find_by_parameter_id(parameter_id)
    if !current_param
      current_param = line_items.build(:parameter_id => parameter_id)
    end

    current_param
  end
end
