class AddRecieveNewsToOrders < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_orders, :receive_news, :boolean
  end
end
