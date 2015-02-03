class AddCategoryIdToProductSpecifications < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_product_specifications, :category_id, :integer
  end
end
