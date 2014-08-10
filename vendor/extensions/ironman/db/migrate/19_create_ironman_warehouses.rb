class CreateIronmanWarehouses < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_warehouses do |t|
      t.string :name
      t.string :address
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.string :phone
      t.string :fax
      t.decimal :latitude
      t.decimal :longitude
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/warehouses"})
    end

    drop_table :refinery_ironman_warehouses

  end

end
