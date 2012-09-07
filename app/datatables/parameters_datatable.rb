class ParametersDatatable

  include DisplayHelper
  include LatexHelper

  delegate :params, :h, :link_to, :raw, :truncate, :button_to, :line_items_path, :to => :@view

  def initialize(view, options)
    @view = view
    @search_text = params['text']
    @options = options
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Parameter.count,
      iTotalDisplayRecords: parameters.total_entries,
      aaData: data
    }
  end

private

  def data
    parameters.map do |p|
      detail = p.parameter_detail
      [
        render_text(p.name, :search_text => @search_text),
        detail.unit.empty? ? raw("&nbsp;") : render_latex(detail.unit),
        render_text(detail.source, :search_text => @search_text),
        render_text(detail.expression, :search_text => @search_text),
        render_text(detail.description, :max_length => 500, :search_text => @search_text),
        button_to('Add', line_items_path(:parameter_id => p.id), :remote => true, :onclick => "var event = arguments[0] || window.event; event.stopPropagation ? event.stopPropagation() : event.cancelBubble = true;")
      ]
    end
  end

  def parameters
    @parameters ||= fetch_parameters
  end

  def fetch_parameters
    parameters = exec_query do |query|
      query.joins('LEFT OUTER JOIN parameter_details ON parameters.id = parameter_details.parameter_id')
      .order("#{sort_column} #{sort_direction}")
      .page(page)
      .per_page(per_page)
    end

    parameters
  end

  def exec_query &block
    if @options[:user_signed_in]
      block.call(Parameter)
    else
      block.call(Parameter.public_parameters_only)
    end
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[name parameter_details.unit parameter_details.source parameter_details.expression parameter_details.description name]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
