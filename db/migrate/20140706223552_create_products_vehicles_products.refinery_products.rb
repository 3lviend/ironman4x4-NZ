# This migration comes from refinery_products (originally 9)
class CreateProductsVehiclesProducts < ActiveRecord::Migration
  def change
    create_table :refinery_products_vehicles_products do |t|
      t.references :vehicle
      t.references :product
    end

    add_index :refinery_products_vehicles_products, [:vehicle_id, :product_id], :unique => true, :name => 'index_refinery_vehicles_products_on_vehicle_id_and_product_id'
  end
end
