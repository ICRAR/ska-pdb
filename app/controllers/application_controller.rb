class ApplicationController < ActionController::Base

  protect_from_forgery

  helper_method :get_page_size, :get_page_sizing_path

  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  def redirect_to_root_unless_admin
    redirect_to root_path unless current_user && current_user.admin?
  end

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
