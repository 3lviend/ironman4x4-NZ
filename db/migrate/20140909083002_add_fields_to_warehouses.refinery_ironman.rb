# This migration comes from refinery_ironman (originally 37)
class AddFieldsToWarehouses < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_warehouses, :business_name, :string
    add_column :refinery_ironman_warehouses, :email, :string
    add_column :refinery_ironman_warehouses, :website, :string
    rename_column :refinery_ironman_warehouses, :address, :address1
    add_column :refinery_ironman_warehouses, :address2, :string
    add_column :refinery_ironman_warehouses, :contact, :string

    rename_column :refinery_ironman_stockists, :address, :address1
    add_column :refinery_ironman_stockists, :address2, :string
  end
end
