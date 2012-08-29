class ParameterIndex < ActiveRecord::Base
  belongs_to :parameter

  def self.build_from_parameter parameter
    search_text = build_search_text(parameter)

    index = ParameterIndex.find_by_parameter_id(parameter.id)
    return ParameterIndex.new(:parameter => parameter, :search_text => search_text) unless index

    index.search_text = search_text
    index
  end

  def self.build_search_text parameter
    text = ""
    text << parameter.name
    param_detail = parameter.parameter_detail
    ['scope0', 'scope1', 'scope2', 'scope3', 'param_class', 'kind', 'direction', 'case', 'status'].each do |method|
      prop = param_detail.send(method)
      text << prop.name if prop && !prop.name.nil?
    end

    text << (param_detail.value ? param_detail.value.to_s : '')
    text << param_detail.value_s
    text << 'basic' if param_detail.basic
    text << 'derived' unless param_detail.basic
    text << 'scalar' if param_detail.scalar
    text << 'multi' unless param_detail.scalar
    text << param_detail.unit
    text << param_detail.description
    text << param_detail.source
    text << param_detail.expression
    text << param_detail.notation
    text
  end
end
