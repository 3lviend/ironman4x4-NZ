# This migration comes from refinery_ironman (originally 18)
class CreateIronmanEnquiries < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_enquiries do |t|
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
      t.text :message
      t.boolean :receive_news
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
      ::Refinery::Page.delete_all({:link_url => "/ironman/enquiries"})
      ::Refinery::Page.delete_all({
        :link_url => ("/contact" || "/contact/thank_you")
      })
    end

    drop_table :refinery_ironman_enquiries

  end

end
