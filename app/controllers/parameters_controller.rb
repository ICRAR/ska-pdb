require 'pdf_generator'
require 'csv'

class ParametersController < ApplicationController
  before_filter :redirect_to_root_unless_admin, :only => [:edit, :update]

  helper_method :get_page_size, :get_page_sizing_path

  def index
    @cart = current_cart

    respond_to do |format|
      format.html do
        @parameters = Parameter.paginate(:page => params[:page], :per_page => get_page_size) if user_signed_in?
        @parameters = Parameter.public_parameters_only.paginate(:page => params[:page], :per_page => get_page_size) unless user_signed_in?
      end
      format.json {
        render json: ParametersDatatable.new(view_context, {:user_signed_in => user_signed_in?, :page_size => get_page_size})
      }
    end
  end

  def search
    @cart = current_cart
    @search_text = params['text']
    search_terms = CSV::parse_line(@search_text, :col_sep => ' ')
    search_terms = [] unless search_terms
    @parameters = Parameter.full_text_search(search_terms).paginate(:page => params[:page], :per_page => get_page_size) if user_signed_in?
    @parameters = Parameter.full_text_search(search_terms).public_parameters_only.paginate(:page => params[:page], :per_page => get_page_size) unless user_signed_in?

    render :index
  end

  def export
    @cart = current_cart
    @parameters = @cart.line_items.map {|item| item.parameter}

    respond_to do |format|
      format.java { render :index }
      format.xml { render :xml => @parameters }
      format.pdf { render :text => PdfGenerator.new.create_pdf(@parameters) }
    end
  end

  def edit
    @parameter = Parameter.find(params[:id])
  end

  def show
    @parameter = Parameter.find(params[:id])
  end

  def update
    @parameter = Parameter.find(params[:id])
    @parameter.update_attributes(params[:parameter])

    if @parameter.save
      flash[:notice] = "Parameter updated"
    else
      flash[:alert] = @parameter.errors.empty? ? "Unknown error: unable to save parameter" : @parameter.errors.full_messages.to_sentence
    end
    redirect_to :action => 'edit'
  end

  private

  def redirect_to_root_unless_admin
    redirect_to root_path unless current_user && current_user.admin?
  end

  def get_page_size
    params[:page_size] ||= 20
  end

  def get_page_sizing_path
    url_for(:only_path => false) + "?" +
      request.query_string.gsub(/\&*page_size=[\d]*/, "").gsub(/\&*page=[\d]*/, "")
  end

end
