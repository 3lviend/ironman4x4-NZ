class CreateIronmanSubdomains < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_subdomains do |t|
      t.string :db_name
      t.string :company_name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/subdomains"})
    end

    drop_table :refinery_ironman_subdomains

  end

end
