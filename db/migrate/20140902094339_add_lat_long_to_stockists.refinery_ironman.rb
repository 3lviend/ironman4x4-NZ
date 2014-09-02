# This migration comes from refinery_ironman (originally 36)
class AddLatLongToStockists < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_stockists, :latitude, :decimal
    add_column :refinery_ironman_stockists, :longitude, :decimal
  end
end
