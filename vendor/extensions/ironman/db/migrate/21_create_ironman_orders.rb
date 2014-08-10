class CreateIronmanOrders < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_orders do |t|
      t.string :order_no
      t.integer :stockist_id
      t.string :name
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.string :email
      t.string :phone
      t.string :enquiry_type
      t.integer :vehicle_id
      t.text :comments
      t.boolean :spam
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ironman"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ironman/orders"})
    end

    drop_table :refinery_ironman_orders

  end

end
