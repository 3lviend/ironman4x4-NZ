class AddSlugToPosts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_posts, :slug, :string
    add_index :refinery_ironman_posts, :slug
  end
end
