class Parameter < ActiveRecord::Base
  has_many :parameter_details
  belongs_to :parameter_detail

  scope :public_parameters_only, where("protected is null or protected != ?", true)
end
