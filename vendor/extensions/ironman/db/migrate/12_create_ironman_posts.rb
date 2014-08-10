class CreateIronmanPosts < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_posts do |t|
      t.string :type
      t.string :title
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
    drop_table :refinery_posts
  end

end
