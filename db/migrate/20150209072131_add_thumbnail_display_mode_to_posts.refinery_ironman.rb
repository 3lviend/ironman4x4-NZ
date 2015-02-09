# This migration comes from refinery_ironman (originally 65)
class AddThumbnailDisplayModeToPosts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_posts, :thumbnail_display_mode, :string
  end
end
