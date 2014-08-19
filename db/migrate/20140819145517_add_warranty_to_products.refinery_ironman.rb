# This migration comes from refinery_ironman (originally 30)
class AddWarrantyToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :warranty, :text
  end
end
