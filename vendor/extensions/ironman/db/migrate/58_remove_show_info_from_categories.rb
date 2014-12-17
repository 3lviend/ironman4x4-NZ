class RemoveShowInfoFromCategories < ActiveRecord::Migration
  def up
    remove_column :refinery_ironman_categories, :show_info
  end

  def down
    add_column :refinery_ironman_categories, :show_info, :boolean, :default => true
  end
end
