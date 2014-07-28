# This migration comes from refinery_posts (originally 3)
class RemovePositionFromPosts < ActiveRecord::Migration

  def up
    remove_column :refinery_posts, :position
  end

  def down
    add_column :refinery_posts, :position, :integer
  end
end
