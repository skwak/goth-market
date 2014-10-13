class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @vendor = Vendor.authenticate(params[:username])
    if @vendor
      session[:user_id] = @vendor.id
      redirect_to show_vendor_path(current_user.id), :notice => "You are now logged in."
    else
      redirect_to sign_in_path, :notice => "Couldn't find you. Try again?"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
