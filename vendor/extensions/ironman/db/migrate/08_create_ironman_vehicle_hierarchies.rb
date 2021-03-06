class CreateIronmanVehicleHierarchies < ActiveRecord::Migration
  def change
    create_table :refinery_ironman_vehicle_hierarchies, :id => false do |t|
      t.integer  :ancestor_id, :null => false   # ID of the parent/grandparent/great-grandparent/... vehicle
      t.integer  :descendant_id, :null => false # ID of the target vehicle
      t.integer  :generations, :null => false   # Number of generations between the ancestor and the descendant. Parent/child = 1, for example.
    end

    # For "all progeny of…" and leaf selects:
    add_index :refinery_ironman_vehicle_hierarchies, [:ancestor_id, :descendant_id, :generations],
      :unique => true, :name => "vehicle_anc_desc_udx"

    # For "all ancestors of…" selects,
    add_index :refinery_ironman_vehicle_hierarchies, [:descendant_id],
      :name => "vehicle_desc_idx"
  end
end
