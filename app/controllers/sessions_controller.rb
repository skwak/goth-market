class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @vendor = Vendor.authenticate(params[:username])
    session[:user_id] = @vendor.id
    if @vendor
      redirect_to show_vendor_path(:id), :notice => "You are now logged in."
    else

    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
