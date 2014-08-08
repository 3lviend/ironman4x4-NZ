# This migration comes from refinery_ironman (originally 5)
class AddSlugToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :slug, :string
    add_index :refinery_ironman_categories, :slug
  end
end
