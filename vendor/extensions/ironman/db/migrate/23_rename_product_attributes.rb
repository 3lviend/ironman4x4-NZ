class RenameProductAttributes < ActiveRecord::Migration

  def up
    if column_exists? :refinery_ironman_products, :product_attributes
      rename_column :refinery_ironman_products, :product_attributes, :product_attribs
    end
  end

  def down
    if column_exists? :refinery_ironman_products, :product_attribs
      rename_column :refinery_ironman_products, :product_attribs, :product_attributes
    end
  end

end
