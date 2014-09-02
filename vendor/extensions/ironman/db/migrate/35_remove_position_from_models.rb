class RemovePositionFromModels < ActiveRecord::Migration

  def up
    remove_column :refinery_ironman_stockists, :position
    remove_column :refinery_ironman_orders, :position
    remove_column :refinery_ironman_enquiries, :position
    remove_column :refinery_ironman_media_releases, :position
  end

  def down
    add_column :refinery_ironman_media_releases, :position, :integer
    add_column :refinery_ironman_enquiries, :position, :integer
    add_column :refinery_ironman_orders, :position, :integer
    add_column :refinery_ironman_stockists, :position, :integer
  end

end
