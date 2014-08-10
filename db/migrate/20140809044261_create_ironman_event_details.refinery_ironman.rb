# This migration comes from refinery_ironman (originally 13)
class CreateIronmanEventDetails < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_event_details do |t|
      t.integer :post_id
      t.datetime :start
      t.datetime :end
      t.string :location
      t.decimal :latitude
      t.decimal :longitude
      t.integer :position

      t.timestamps
    end

  end

  def down
    drop_table :refinery_ironman_event_details
  end

end
