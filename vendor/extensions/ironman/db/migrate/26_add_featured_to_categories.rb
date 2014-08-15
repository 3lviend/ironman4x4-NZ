class AddFeaturedToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :featured, :boolean
  end
end
