class RemoveProductPosition < ActiveRecord::Migration

  def up
    remove_column :refinery_ironman_products, :position
  end

  def down
    add_column :refinery_ironman_products, :position, :integer
  end

end
