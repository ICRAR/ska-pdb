class Parameter < ActiveRecord::Base
  has_many :parameter_details
  belongs_to :parameter_detail
  has_one :parameter_index

  accepts_nested_attributes_for :parameter_detail

  scope :public_parameters_only, where("protected is null or protected != ?", true)
  scope :full_text_search, lambda { |search_terms|
    query = search_terms.collect { |term| "lower(search_text) like lower('%#{term}%')" }.join(' AND ')
    joins(:parameter_index).where(query)
  }
end
