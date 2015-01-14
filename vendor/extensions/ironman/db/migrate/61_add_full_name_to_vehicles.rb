class AddFullNameToVehicles < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_vehicles, :name_full, :string
  end
end
