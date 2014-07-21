# This migration comes from refinery_products (originally 10)
class AddShortDescriptionToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_products_categories, :short_description, :string
  end
end
