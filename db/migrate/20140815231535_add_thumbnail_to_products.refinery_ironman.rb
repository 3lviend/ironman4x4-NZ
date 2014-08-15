# This migration comes from refinery_ironman (originally 24)
class AddThumbnailToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :thumbnail_image_id, :integer
  end
end
