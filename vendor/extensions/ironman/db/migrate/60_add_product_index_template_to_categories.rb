class AddProductIndexTemplateToCategories < ActiveRecord::Migration
  def up
    add_column :refinery_ironman_categories, :product_index_template, :string
  end

  def down
    remove_column :refinery_ironman_categories, :product_index_template
  end
end
