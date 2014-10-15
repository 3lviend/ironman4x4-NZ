# This migration comes from refinery_ironman (originally 41)
class AddFeaturedToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :featured, :boolean, :default => false
  end
end
