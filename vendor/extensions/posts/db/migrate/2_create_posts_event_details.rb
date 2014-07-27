class CreatePostsEventDetails < ActiveRecord::Migration

  def up
    create_table :refinery_posts_event_details do |t|
      t.integer :post_id
      t.datetime :start
      t.datetime :end
      t.string :location
      t.decimal :latitude
      t.decimal :longitude
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-posts"})
    end

    drop_table :refinery_posts_event_details

  end

end
