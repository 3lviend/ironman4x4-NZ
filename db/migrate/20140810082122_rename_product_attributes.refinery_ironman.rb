# This migration comes from refinery_ironman (originally 23)
class RenameProductAttributes < ActiveRecord::Migration

  def up
    rename_column :refinery_ironman_products, :product_attributes, :product_attribs
  end

  def down
    rename_column :refinery_ironman_products, :product_attribs, :product_attributes
  end

end
