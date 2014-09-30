# This migration comes from refinery_ironman (originally 39)
class AddDraftToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :draft, :boolean
  end
end
