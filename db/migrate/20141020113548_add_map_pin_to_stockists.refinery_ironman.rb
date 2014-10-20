# This migration comes from refinery_ironman (originally 45)
class AddMapPinToStockists < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_stockists, :map_pin, :string, :default => 'green'
  end
end
