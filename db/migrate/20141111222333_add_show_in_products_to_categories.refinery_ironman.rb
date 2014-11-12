# This migration comes from refinery_ironman (originally 55)
class AddShowInProductsToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :show_in_products, :boolean, :default => true
  end
end
