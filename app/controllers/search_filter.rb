require 'csv'

class SearchFilter
  @@criteria_field_map = {
    "text" => "text",
  }
  
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
    # we only do a full text search over 2 columns of the db at this time
    base_search = "(lower(description) LIKE lower(?) OR lower(source) LIKE lower(?))"
    search_text = @criteria['text']
    return "", [] if search_text.nil?

    words = CSV::parse_line(search_text, :col_sep => ' ').compact
    return "", [] if words.empty?

    where_condition = ([base_search] * words.size).join " AND "
    number_of_fields_to_search = base_search.scan('LIKE').count
    values = words.map { |w| ["%#{w}%"] * number_of_fields_to_search }.flatten

    return where_condition, values
  end
end