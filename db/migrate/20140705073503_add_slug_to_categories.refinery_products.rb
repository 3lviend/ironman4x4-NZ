# This migration comes from refinery_products (originally 5)
class AddSlugToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_products_categories, :slug, :string
    add_index :refinery_products_categories, :slug
  end
end
