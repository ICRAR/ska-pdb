class Proposal < ActiveRecord::Base
  belongs_to :parameter_detail

  accepts_nested_attributes_for :parameter_detail
end
