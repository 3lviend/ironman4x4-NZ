class RemoveProductAttributes < ActiveRecord::Migration

  def up
    remove_column :refinery_ironman_products, :product_attribs
  end

  def down
    add_column :refinery_ironman_products, :product_attribs, :json
  end

end
