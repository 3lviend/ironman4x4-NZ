class AddShowInfoToCategories < ActiveRecord::Migration
  def up
    add_column :refinery_ironman_categories, :show_info, :boolean, :default => true
  end

  def down
    remove_column :refinery_ironman_categories, :show_info
  end
end
