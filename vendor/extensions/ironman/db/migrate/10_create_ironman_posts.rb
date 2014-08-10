class CreateIronmanPosts < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_posts do |t|
      t.string :title
      t.string :type
      t.text :teaser
      t.text :body
      t.integer :user_id
      t.integer :index_image_id
      t.integer :hero_image_id
      t.datetime :published_at
      t.datetime :expire_at
      t.boolean :draft
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/posts"})
    end

    drop_table :refinery_ironman_posts

  end

end
