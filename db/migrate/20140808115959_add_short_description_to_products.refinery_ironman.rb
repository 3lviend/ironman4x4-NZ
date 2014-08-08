# This migration comes from refinery_ironman (originally 11)
class AddShortDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :short_description, :string
  end
end
