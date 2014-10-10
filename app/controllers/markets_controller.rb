class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)
    @market.vendor_id = session[:user_id]
    if @market.save
      redirect_to show_market_path(:id), :notice => "Market has been created!"
    else
      render "new"
    end
  end

  def show
    if session[:user_id]
      @market = Market.find(sessions[:user_id])
    else
      redirect_to root_path, :notice => "Huh?"
    end
  end

  private

  def market_params
    (params.require(:market).permit(:location, :name))
  end
end
