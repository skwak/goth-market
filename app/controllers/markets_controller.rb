class MarketsController < ApplicationController
  def index
    @markets = Market.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @markets }
      # market addresses in json: http://localhost:3000/markets.json
    end
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)
    @market.vendor_id = session[:user_id]
    if @market.save
      redirect_to show_vendor_path(:id), :notice => "Market has been created!"
    else
      render "new"
    end
  end

  def show
    @markets = Market.where(vendor_id: params[:id])
  end

  private

  def market_params
    (params.require(:market).permit(:address, :name))
  end

end
