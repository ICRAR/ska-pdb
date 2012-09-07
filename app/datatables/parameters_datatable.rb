class ParametersDatatable

  delegate :params, :h, :link_to, :to => :@view

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
        h(p.name),
        h(detail.unit),
        h(detail.source),
        h(detail.expression),
        h(detail.description),
        "&nbsp;"
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

    # if params[:sSearch].present?
    #   products = parameters.where("name like :search or category like :search", search: "%#{params[:sSearch]}%")
    # end
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
    columns = %w[name parameter_details.unit parameter_details.source parameter_details.expression parameter_details.description]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
