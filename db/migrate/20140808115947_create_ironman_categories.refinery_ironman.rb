# This migration comes from refinery_ironman (originally 2)
class CreateIronmanCategories < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_categories do |t|
      t.integer :parent_id
      t.string :name
      t.text :description
      t.integer :sort_order
      t.boolean :visible
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/categories"})
    end

    drop_table :refinery_ironman_categories

  end

end
