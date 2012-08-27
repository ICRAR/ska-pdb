require 'csv'

class SearchFilter
  SEARCH_COLUMNS = ['description', 'source', 'unit']
  
  def self.initialize_from params
    sc = new
    sc.instance_variable_set(:@criteria, {'text' => params['text']})
    return sc
  end
  
  def empty?
    @criteria.nil? or @criteria.empty?
  end

  def build_query
    return ParameterDetail.where('') if empty?

    build_query_for_search_text SEARCH_COLUMNS, @criteria['text']
  end
  
  def build_query_for_search_text(search_columns, search_text)
    return ParameterDetail.where('') if search_text.nil?

    words = CSV::parse_line(search_text, :col_sep => ' ').compact
    return ParameterDetail.where('') if words.empty?

    base_search = construct_base_search(search_columns)
    where_condition = ([base_search] * words.size).join " AND "
    number_of_fields_to_search = base_search.scan('LIKE').count
    values = words.map { |w| ["%#{w}%"] * number_of_fields_to_search }.flatten

    ParameterDetail.where(where_condition, *values)
  end

  def construct_base_search columns
    '(' + columns.collect { |s| "lower(#{s}) LIKE lower(?)" }.join(" OR ") + ')'
  end
end