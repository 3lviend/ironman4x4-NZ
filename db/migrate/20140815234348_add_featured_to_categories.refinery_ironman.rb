# This migration comes from refinery_ironman (originally 26)
class AddFeaturedToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :featured, :boolean
  end
end
