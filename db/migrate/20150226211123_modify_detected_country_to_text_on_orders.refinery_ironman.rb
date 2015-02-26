# This migration comes from refinery_ironman (originally 69)
class ModifyDetectedCountryToTextOnOrders < ActiveRecord::Migration
  def change
    change_column :refinery_ironman_orders, :detected_country, :text
  end
end
