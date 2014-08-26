# This migration comes from refinery_ironman (originally 33)
class RemoveCategoryAndVehiclePosition < ActiveRecord::Migration

  def up
    remove_column :refinery_ironman_categories, :position
    remove_column :refinery_ironman_vehicles, :position
  end

  def down
    add_column :refinery_ironman_vehicles, :position, :integer
    add_column :refinery_ironman_categories, :position, :integer
  end

end
