class CreateMediaReleasesMediaReleases < ActiveRecord::Migration

  def up
    create_table :refinery_media_releases do |t|
      t.string :title
      t.string :category
      t.string :publication
      t.date :published_at
      t.text :description
      t.integer :priced_resource_id
      t.integer :unpriced_resource_id
      t.integer :thumbnail_image_id
      t.date :posted_at
      t.boolean :draft
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-media_releases"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/media_releases/media_releases"})
    end

    drop_table :refinery_media_releases

  end

end
