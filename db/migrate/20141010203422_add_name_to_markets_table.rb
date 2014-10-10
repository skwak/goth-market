class AddNameToMarketsTable < ActiveRecord::Migration
  def change
    add_column(:markets, :name, :string)
  end
end
