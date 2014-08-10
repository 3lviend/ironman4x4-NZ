# This migration comes from refinery_ironman (originally 14)
class RemovePositionFromPosts < ActiveRecord::Migration

  def up
    remove_column :refinery_ironman_posts, :position
    remove_column :refinery_ironman_event_details, :position
  end

  def down
    add_column :refinery_ironman_posts, :position, :integer
    add_column :refinery_ironman_event_details, :position, :integer
  end
end
