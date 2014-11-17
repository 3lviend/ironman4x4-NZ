# This migration comes from refinery_ironman (originally 57)
class ModifyThumbnailDisplayModeDefault < ActiveRecord::Migration
  def up
    execute <<-SQL
      update refinery_ironman_products
      set    thumbnail_display_mode = null,
             updated_at = now();
    SQL

    execute <<-SQL
      update refinery_ironman_categories
      set    thumbnail_display_mode = 'contain',
             updated_at = now();
    SQL
  end

  def down
  end
end
