module DisplayHelper
  require 'csv'

  def render_text(text, options = [])
    return raw("&nbsp;") unless text
    return raw("&nbsp;") if text.empty?

    max_length = options[:max_length]
    text = truncate(text, :length => max_length) if max_length

    search_text = options[:search_text]
    if search_text
      search_terms = CSV::parse_line(search_text, :col_sep => ' ')
      search_terms = [] unless search_terms

      text = highlight(text, search_terms)
    end

    text
  end
end