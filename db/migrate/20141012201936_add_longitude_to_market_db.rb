class AddLongitudeToMarketDb < ActiveRecord::Migration
  def change
    add_column(:markets, :longitude, :integer)
  end
end
