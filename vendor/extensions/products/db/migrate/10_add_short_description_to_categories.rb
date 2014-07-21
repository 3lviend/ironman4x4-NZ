class AddShortDescriptionToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_products_categories, :short_description, :string
  end
end
