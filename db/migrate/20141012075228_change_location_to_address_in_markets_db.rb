class ChangeLocationToAddressInMarketsDb < ActiveRecord::Migration
  def change
    rename_column :markets, :location, :address
  end
end
