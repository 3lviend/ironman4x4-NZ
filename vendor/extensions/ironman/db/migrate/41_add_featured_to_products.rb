class AddFeaturedToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :featured, :boolean, :default => false
  end
end
