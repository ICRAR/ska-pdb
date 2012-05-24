class Parameter < ActiveRecord::Base
  belongs_to :case
  belongs_to :status
  belongs_to :param_class
  belongs_to :kind
  
  def self.search(page_number, page_size, filter = SearchFilter.new)
    
    if filter.empty?
      paginate(:page => page_number, :per_page => page_size)
    else
      query, params = filter.build_query
      where(query, *params).paginate(:page => page_number, :per_page => page_size)
    end  
  end
  
end
