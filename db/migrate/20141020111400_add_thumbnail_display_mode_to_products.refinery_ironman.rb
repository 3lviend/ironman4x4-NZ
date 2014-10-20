# This migration comes from refinery_ironman (originally 44)
class AddThumbnailDisplayModeToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :thumbnail_display_mode, :string, :default => 'cover'
    add_column :refinery_ironman_categories, :thumbnail_display_mode, :string, :default => 'cover'
  end
end
