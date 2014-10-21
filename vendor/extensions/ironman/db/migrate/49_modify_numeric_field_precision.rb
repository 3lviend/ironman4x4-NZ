class ModifyNumericFieldPrecision < ActiveRecord::Migration
  def change
    change_column :refinery_ironman_event_details, :latitude, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_event_details, :longitude, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_order_lines, :net_amount, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_order_lines, :tax_amount, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_orders, :total_amount, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_orders, :tax_amount, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_products, :price, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_stockists, :latitude, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_stockists, :longitude, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_warehouses, :longitude, :decimal, :precision => 16, :scale => 6
    change_column :refinery_ironman_warehouses, :longitude, :decimal, :precision => 16, :scale => 6
  end
end
