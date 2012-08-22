require 'csv'

class SearchFilter
  @@criteria_field_map = {
    "text" => "text",
  }

  SEARCH_COLUMNS = ['description', 'source', 'unit']
  
  def self.initialize_from params
    valid_criteria = params.select do |k,v|
      @@criteria_field_map.has_key?k and !v.nil? and !v.empty?
    end
    sc = new
    sc.instance_variable_set(:@criteria, Hash[valid_criteria.map {|k,v| [@@criteria_field_map[k], v]}])
    return sc
  end
  
  def empty?
    @criteria.nil? or @criteria.empty?
  end

  def build_query
    return Parameter.where('') if empty?

    build_query_for_search_text SEARCH_COLUMNS, @criteria['text']
  end
  
  def build_query_for_search_text(search_columns, search_text)
    # we only do a full text search over 2 columns of the db at this time
    return Parameter.where('') if search_text.nil?

    words = CSV::parse_line(search_text, :col_sep => ' ').compact
    return Parameter.where('') if words.empty?

    base_search = construct_base_search(search_columns)
    where_condition = ([base_search] * words.size).join " AND "
    number_of_fields_to_search = base_search.scan('LIKE').count
    values = words.map { |w| ["%#{w}%"] * number_of_fields_to_search }.flatten

    Parameter.where(where_condition, *values)
  end

  def construct_base_search columns
    '(' + columns.collect { |s| "lower(#{s}) LIKE lower(?)" }.join(" OR ") + ')'
  end
end