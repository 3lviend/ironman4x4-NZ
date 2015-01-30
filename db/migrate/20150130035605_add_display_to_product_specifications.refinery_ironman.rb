# This migration comes from refinery_ironman (originally 62)
class AddDisplayToProductSpecifications < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_product_specifications, :show_on_product_detail, :boolean
    add_column :refinery_ironman_product_specifications, :show_on_product_popover, :boolean
  end
end
