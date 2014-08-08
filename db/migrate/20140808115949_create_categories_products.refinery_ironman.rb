# This migration comes from refinery_ironman (originally 3)
class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :refinery_ironman_categories_products do |t|
      t.references :category
      t.references :product
    end

    add_index :refinery_ironman_categories_products, [:category_id, :product_id], :unique => true, :name => 'index_categories_products_on_category_id_and_product_id'

  end
end
