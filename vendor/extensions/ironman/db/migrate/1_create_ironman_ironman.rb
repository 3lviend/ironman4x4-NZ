class CreateIronmanIronman < ActiveRecord::Migration

  def up
    create_table :refinery_ironman do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/ironman"})
    end

    drop_table :refinery_ironman

  end

end
