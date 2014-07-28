class RemovePositionFromPosts < ActiveRecord::Migration

  def up
    remove_column :refinery_posts, :position
    remove_column :refinery_posts_event_details, :position
  end

  def down
    add_column :refinery_posts, :position, :integer
    add_column :refinery_posts_event_details, :position, :integer
  end
end
