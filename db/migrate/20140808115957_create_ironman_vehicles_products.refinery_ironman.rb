# This migration comes from refinery_ironman (originally 9)
class CreateIronmanVehiclesProducts < ActiveRecord::Migration
  def change
    create_table :refinery_ironman_vehicles_products do |t|
      t.references :vehicle
      t.references :product
    end

    add_index :refinery_ironman_vehicles_products, [:vehicle_id, :product_id], :unique => true, :name => 'index_refinery_vehicles_products_on_vehicle_id_and_product_id'
  end
end
