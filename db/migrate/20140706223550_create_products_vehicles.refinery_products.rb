# This migration comes from refinery_products (originally 7)
class CreateProductsVehicles < ActiveRecord::Migration

  def up
    create_table :refinery_products_vehicles do |t|
      t.integer :parent_id
      t.string :name
      t.integer :sort_order
      t.boolean :visible
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-products"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/products/vehicles"})
    end

    drop_table :refinery_products_vehicles

  end

end
