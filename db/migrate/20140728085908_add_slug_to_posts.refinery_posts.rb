# This migration comes from refinery_posts (originally 4)
class AddSlugToPosts < ActiveRecord::Migration
  def change
    add_column :refinery_posts, :slug, :string
    add_index :refinery_posts, :slug
  end
end
