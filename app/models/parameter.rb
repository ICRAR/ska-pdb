class Parameter < ActiveRecord::Base
  belongs_to :case
  belongs_to :status
  belongs_to :param_class
  belongs_to :kind
  has_many :line_items
  
  def self.search(page_number, page_size, filter = SearchFilter.new, signed_in)
    filter_statement = where("")
    filter_statement = where("protected is null or protected != ?", true) unless signed_in

    if filter.empty?
      filter_statement.paginate(:page => page_number, :per_page => page_size)
    else
      query, params = filter.build_query
      filter_statement.where(query, *params).paginate(:page => page_number, :per_page => page_size)
    end
  end
  
end
