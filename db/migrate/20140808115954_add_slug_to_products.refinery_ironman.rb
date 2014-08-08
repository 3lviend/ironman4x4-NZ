# This migration comes from refinery_ironman (originally 6)
class AddSlugToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :slug, :string
    add_index :refinery_ironman_products, :slug
  end
end
