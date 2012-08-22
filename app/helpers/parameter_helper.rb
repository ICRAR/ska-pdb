module ParameterHelper
  def parameter_name param
    "#{param.param_class.name}_#{param.kind.name}"
  end
end