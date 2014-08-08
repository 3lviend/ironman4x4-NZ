class CreateStockistsStockists < ActiveRecord::Migration

  def up
    create_table :refinery_stockists do |t|
      t.string :name
      t.string :store_type
      t.string :address
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.string :contact
      t.string :phone
      t.string :website
      t.string :email
      t.integer :logo_image_id
      t.boolean :visible
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-stockists"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/stockists/stockists"})
    end

    drop_table :refinery_stockists

  end

end
