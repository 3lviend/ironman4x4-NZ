# This migration comes from refinery_ironman (originally 59)
class AddHeroSubcategoryToCategories < ActiveRecord::Migration
  def up
    add_column :refinery_ironman_categories, :is_hero_subcategory, :boolean, :default => false
  end

  def down
    remove_column :refinery_ironman_categories, :is_hero_subcategory
  end
end
