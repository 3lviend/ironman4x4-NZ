class AddThumbnailToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :thumbnail_image_id, :integer
  end
end
