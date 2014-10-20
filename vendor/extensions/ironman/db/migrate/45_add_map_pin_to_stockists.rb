class AddMapPinToStockists < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_stockists, :map_pin, :string, :default => 'green'
  end
end
