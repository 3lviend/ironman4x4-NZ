class AddMetaDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :meta_description, :text
    add_column :refinery_ironman_categories, :meta_description, :text
  end
end
