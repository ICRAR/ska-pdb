module ParameterHelper
  def parameter_name param
    param_name = 'Nature:'
    param_name << "#{param.category}:" if param.category
    param_name << param.param_class.name
    param_name << "_#{param.kind.name}" if param.kind && param.kind.name && !param.kind.name.empty?
    param_name << "_#{param.case.name}" if param.case && param.case.name && !param.case.name.empty?
    param_name << "_#{param.direction.name}" if param.direction && param.direction.name && !param.direction.name.empty?
    param_name
  end
end