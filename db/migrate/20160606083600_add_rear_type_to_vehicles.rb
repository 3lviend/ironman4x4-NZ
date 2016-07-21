class AddRearTypeToVehicles < ActiveRecord::Migration
  def change
  	add_column :refinery_ironman_vehicles, :rear_type, :string
  end
end
