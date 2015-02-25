# This migration comes from refinery_ironman (originally 67)
class AddFaxToStockists < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_stockists, :fax, :string
    add_column :refinery_ironman_stockists, :show_on_contact, :boolean
    add_column :refinery_ironman_stockists, :warehouse_name, :string
  end
end
