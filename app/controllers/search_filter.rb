require 'csv'

class SearchFilter
  @@criteria_field_map = {
    "text" => "text",
  }

  # words = CSV::parse_line('some words "some quoted text" some more words', :col_sep => ' ')
  
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
    #where_condition = @criteria.keys.first + @criteria.keys.drop(1).inject(" LIKE ?") {|q, p| q + " AND #{p} LIKE ?"}
    #return where_condition, @criteria.values.map{|v| "%#{v}%"}

    # we only do a full text search at this time
    base_search = "(description LIKE ? OR source LIKE ?)"
    search_text = @criteria['text']
    return "", [] if search_text.nil?

    words = CSV::parse_line(search_text, :col_sep => ' ').compact
    return "", [] if words.empty?

    where_condition = words.drop(1).inject(base_search) {|condition, word| condition + " AND #{base_search}"}
    values = words.inject([]) {|result, word| result << "%#{word}%" << "%#{word}%"}

    return where_condition, values
  end
  
end