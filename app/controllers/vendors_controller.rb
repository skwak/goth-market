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
    @vendor = Vendor.find(session[:user_id])
    @market = Market.find_by(vendor_id: session[:user_id])
  end

  def destroy
    @vendor = Vendor.find(session[:user_id]).delete
    session[:user_id] = nil
    redirect_to root_path, :notice => "Deleted!"
  end

  private

  def vendor_params
    (params.require(:vendor).permit(:username, :email, :description))
  end
end
