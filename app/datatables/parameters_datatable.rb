class ParametersDatatable

  include DisplayHelper
  include LatexHelper

  delegate :params, :h, :link_to, :raw, :truncate, :button_to, :line_items_path, :hightlight, :render_text, :to => :@view

  def initialize(view, options)
    @view = view
    @options = options

    @search = options[:search]
    @search_text = options[:search_text]
    @search_terms = options[:search_terms]
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
      {
        "name" => render_text(p.name, :search_text => @search_text),
        "value" => derived_value(detail),
        "unit" => detail.unit.empty? ? raw("&nbsp;") : render_latex(detail.unit),
        "source" => render_text(detail.source, :search_text => @search_text),
        "expression" => render_text(detail.expression, :search_text => @search_text),
        "description" => render_text(detail.description, :max_length => 500, :search_text => @search_text),
        "button" => button_to('Add', line_items_path(:parameter_id => p.id), :"data-parameter-id" => p.id, :remote => true)
      }
    end
  end

  def derived_value(detail)
    return detail.value_s.gsub(/\%SELF\%/, detail.parameter.name)  if detail.format == '%s'
    return detail.format % detail.value unless detail.value == 0
    ''
  end

  def parameters
    unless defined? @parameters
      @parameters = @search ? search_parameters : fetch_parameters
    end
    @parameters
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

  def search_parameters
    parameters = exec_query do |query|
      query.joins('LEFT OUTER JOIN parameter_details ON parameters.id = parameter_details.parameter_id')
      .full_text_search(@search_terms)
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
    columns = %w[name parameter_details.value parameter_details.unit parameter_details.source parameter_details.expression parameter_details.description name]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
