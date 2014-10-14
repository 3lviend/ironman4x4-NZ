# This migration comes from refinery_ironman (originally 29)
class RemoveProductAttributes < ActiveRecord::Migration

  def up
    if column_exists? :refinery_ironman_products, :product_attribs
      remove_column :refinery_ironman_products, :product_attribs
    end
  end

  def down
    add_column :refinery_ironman_products, :product_attribs, :json
  end

end
