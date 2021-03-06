class CreateIronmanProducts < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_products do |t|
      t.string :product_no
      t.string :name
      t.text :description
      t.text :notes
      t.integer :quantity_required
      if t.respond_to? :json
        t.json :product_attributes
      end
      t.decimal :price
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms_ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/products"})
    end

    drop_table :refinery_ironman_products

  end

end
