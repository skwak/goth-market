class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      session[:user_id] = @vendor.id
      redirect_to show_vendor_path(:id), :notice => "Congratulations! You made an account."
    else
      render "new", :notice => "Try again?!"
    end
  end

  def show
    if session[:user_id]
      @vendor = Vendor.find(session[:user_id])
    else
      redirect_to root_path
    end
  end

  def vendor_params
    (params.require(:vendor).permit(:username, :email, :description))
  end
end
