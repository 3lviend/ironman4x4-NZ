class ModifyThumbnailDisplayMode < ActiveRecord::Migration
  def up
    change_column :refinery_ironman_products, :thumbnail_display_mode, :string, :default => nil
    change_column :refinery_ironman_categories, :thumbnail_display_mode, :string, :default => nil
  end

  def down
    change_column :refinery_ironman_products, :thumbnail_display_mode, :string, :default => 'cover'
    change_column :refinery_ironman_categories, :thumbnail_display_mode, :string, :default => 'cover'
  end
end
