# This migration comes from refinery_ironman (originally 64)
class AddRegionToStockists < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_stockists, :region, :string
  end
end
