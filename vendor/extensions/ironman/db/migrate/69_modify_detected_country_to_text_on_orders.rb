class ModifyDetectedCountryToTextOnOrders < ActiveRecord::Migration
  def change
    change_column :refinery_ironman_orders, :detected_country, :text
  end
end
