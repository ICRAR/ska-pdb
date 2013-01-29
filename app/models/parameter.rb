class Parameter < ActiveRecord::Base
  has_many :parameter_details
  belongs_to :parameter_detail
  has_one :parameter_index

  accepts_nested_attributes_for :parameter_detail

  after_save :update_parameter_index

  scope :public_parameters_only, where("protected is null or protected != ?", true)
  scope :full_text_search, lambda { |search_terms|
    query = search_terms.collect { |term| "lower(search_text) like lower('%#{term}%')" }.join(' AND ')
    joins(:parameter_index).where(query)
  }

  def update_parameter_index
    index = ParameterIndex.build_from_parameter(self)
    index.save!
  end

  def value
    parameter_detail.basic? ? parameter_detail.value : calculated_value
  end

  def calculated_value
    parser = MathHelper::Parser.new
    if parameter_detail.expression.nil?
      raise "Non-basic parameter #{name} has nil expression"
    end
    parser.parse(parameter_detail.expression)
  end

end
