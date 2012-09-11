require 'pdf_generator'
require 'csv'

class ParametersController < ApplicationController
  before_filter :redirect_to_root_unless_admin, :only => [:edit, :update]
  before_filter :search_filter, :only => [:index, :search]
  before_filter :cart_setup, :only => [:index, :search, :export]

  helper_method :get_page_size, :get_page_sizing_path

  def index
    respond_to do |format|
      format.html do
      end
      format.json do
        render json: ParametersDatatable.new(view_context, {
          :user_signed_in => user_signed_in?,
          :page_size => get_page_size,
          :search => @search,
          :search_text => @search_text,
          :search_terms => @search_terms })
      end
    end
  end

  def search
    render :index
  end

  def export
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
    render :show, :layout => false if params[:for_dialog]
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

  def cart_setup
    @cart = current_cart
  end

  def search_filter
    if params['text']
      @search = true
      @search_text = params['text']
      @search_terms = CSV::parse_line(@search_text, :col_sep => ' ')
      @search_terms = [] unless @search_terms
    end
  end

end
