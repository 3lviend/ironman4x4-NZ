class MergeWarehousesWithStockists < ActiveRecord::Migration
  def up
    execute <<-SQL
      insert into refinery_ironman_stockists(
        name, address1, suburb, postcode, state, country, contact, phone,
        website, email, visible, created_at, updated_at, latitude, longitude,
        address2, region, warehouse_name, fax, show_on_contact
      )
      select business_name, address1, suburb, postcode, state, country, contact,
             phone, website, email, 1, now(), now(), latitude, longitude,
             address2, region, name, fax, 1
      from   refinery_ironman_warehouses
      where  region != 'Australia';
    SQL
  end
end
