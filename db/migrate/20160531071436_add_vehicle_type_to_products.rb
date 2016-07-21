class AddVehicleTypeToProducts < ActiveRecord::Migration
  def change
  	add_column :refinery_ironman_products, :vehicle_type, :string
  	add_column :refinery_ironman_products, :drive_type, :string
  end
end
