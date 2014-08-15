# This migration comes from refinery_ironman (originally 25)
class AddThumbnailToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :thumbnail_image_id, :integer
  end
end
