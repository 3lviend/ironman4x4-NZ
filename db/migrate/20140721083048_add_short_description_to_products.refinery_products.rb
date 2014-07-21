# This migration comes from refinery_products (originally 11)
class AddShortDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_products, :short_description, :string
  end
end
