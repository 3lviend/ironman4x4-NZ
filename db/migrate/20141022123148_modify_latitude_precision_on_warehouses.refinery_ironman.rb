# This migration comes from refinery_ironman (originally 53)
class ModifyLatitudePrecisionOnWarehouses < ActiveRecord::Migration
  def change
    change_column :refinery_ironman_warehouses, :latitude, :decimal, :precision => 16, :scale => 6
  end
end
