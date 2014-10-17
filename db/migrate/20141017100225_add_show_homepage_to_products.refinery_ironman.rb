# This migration comes from refinery_ironman (originally 42)
class AddShowHomepageToProducts < ActiveRecord::Migration
  def change
    rename_column :refinery_ironman_products, :featured, :show_on_homepage
    add_column :refinery_ironman_categories, :show_on_homepage, :boolean, :default => false
  end
end
