class AddLatitudeToMarketDb < ActiveRecord::Migration
  def change
    add_column(:markets, :latitude, :integer)
  end
end
