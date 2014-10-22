class AddRegionToWarehouses < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_warehouses, :region, :string
  end
end
