# This migration comes from refinery_products (originally 3)
class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :refinery_products_categories_products do |t|
      t.references :category
      t.references :product
    end

    add_index :refinery_products_categories_products, [:category_id, :product_id], :unique => true, :name => 'index_categories_products_on_category_id_and_product_id'
  end
end
