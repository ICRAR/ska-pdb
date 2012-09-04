class ProposalsController < ApplicationController
  before_filter :redirect_to_root_unless_signed_in

  helper_method :get_page_size, :get_page_sizing_path

  def index
    @proposals = Proposal.paginate(:page => params[:page], :per_page => get_page_size)
  end
  
  private

  def redirect_to_root_unless_signed_in
    redirect_to root_path unless user_signed_in?
  end

  def get_page_size
    params[:page_size] ||= 20
  end

  def get_page_sizing_path
    url_for(:only_path => false) + "?" +
      request.query_string.gsub(/\&*page_size=[\d]*/, "").gsub(/\&*page=[\d]*/, "")
  end
end