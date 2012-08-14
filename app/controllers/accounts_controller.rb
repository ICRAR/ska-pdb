class AccountsController < ApplicationController

  before_filter :authenticate_user!
  before_filter do
    redirect_to root_path unless current_user && current_user.admin?
  end

  def create
    super
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if params[:user][:password].blank?
      params[:user].delete :password
    end

    @user.update_attributes(params[:user])

    if @user.save
      flash[:notice] = "Account updated"
    else
      flash[:alert] = @user.errors.empty? ? "Unknown error: unable to save user account" : @user.errors.full_messages.to_sentence
    end
    redirect_to :action => 'edit'
  end

  def index
    @users = User.all
  end
end