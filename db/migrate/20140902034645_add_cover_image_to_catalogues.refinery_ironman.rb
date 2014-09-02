# This migration comes from refinery_ironman (originally 34)
class AddCoverImageToCatalogues < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_catalogues, :cover_image_id, :integer
  end
end
