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
  
  def self.search(page_number, page_size, search_filter = SearchFilter.new, signed_in)
    filter = search_filter.build_query
    filter = filter.where("protected is null or protected != ?", true) unless signed_in
    filter.paginate(:page => page_number, :per_page => page_size)
  end
end
