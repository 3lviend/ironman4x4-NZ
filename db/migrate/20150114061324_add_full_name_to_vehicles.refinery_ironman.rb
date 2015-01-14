# This migration comes from refinery_ironman (originally 61)
class AddFullNameToVehicles < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_vehicles, :name_full, :string
  end
end
