# This migration comes from refinery_products (originally 6)
class AddSlugToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_products, :slug, :string
    add_index :refinery_products, :slug
  end
end
