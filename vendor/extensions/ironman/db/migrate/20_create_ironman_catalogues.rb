class CreateIronmanCatalogues < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_catalogues do |t|
      t.string :title
      t.text :description
      t.integer :priced_resource_id
      t.integer :unpriced_resource_id
      t.string :products_link
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/catalogues"})
    end

    drop_table :refinery_ironman_catalogues

  end

end
