class ChangeNumberFormatInLatAndLong < ActiveRecord::Migration
  def change
    change_column :markets, :latitude, :float
    change_column :markets, :longitude, :float
  end
end
