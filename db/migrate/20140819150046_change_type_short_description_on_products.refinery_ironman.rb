# This migration comes from refinery_ironman (originally 31)
class ChangeTypeShortDescriptionOnProducts < ActiveRecord::Migration
  def up
    change_column :refinery_ironman_products, :short_description, :text
  end

  def down
    change_column :refinery_ironman_products, :short_description, :string
  end
end
