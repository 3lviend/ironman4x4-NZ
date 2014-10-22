class ModifyLatitudePrecisionOnWarehouses < ActiveRecord::Migration
  def change
    change_column :refinery_ironman_warehouses, :latitude, :decimal, :precision => 16, :scale => 6
  end
end
