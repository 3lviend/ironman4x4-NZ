# This migration comes from refinery_ironman (originally 68)
class AddIpAddressToOrders < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_orders, :ip_address, :string
    add_column :refinery_ironman_orders, :detected_country, :string
  end
end
