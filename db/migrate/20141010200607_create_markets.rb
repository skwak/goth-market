class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :location
      t.integer :vendor_id

      t.timestamps
    end
  end
end
