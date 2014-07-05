# This migration comes from refinery_products (originally 2)
class CreateProductsCategories < ActiveRecord::Migration

  def up
    create_table :refinery_products_categories do |t|
      t.integer :parent_id
      t.string :name
      t.text :description
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
      ::Refinery::Page.delete_all({:link_url => "/products/categories"})
    end

    drop_table :refinery_products_categories

  end

end
