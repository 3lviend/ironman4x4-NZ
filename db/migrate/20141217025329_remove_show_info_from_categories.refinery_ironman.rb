# This migration comes from refinery_ironman (originally 58)
class RemoveShowInfoFromCategories < ActiveRecord::Migration
  def up
    remove_column :refinery_ironman_categories, :show_info
  end

  def down
    add_column :refinery_ironman_categories, :show_info, :boolean, :default => true
  end
end
