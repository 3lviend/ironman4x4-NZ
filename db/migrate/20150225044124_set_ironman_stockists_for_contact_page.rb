class SetIronmanStockistsForContactPage < ActiveRecord::Migration
  def up
    execute <<-SQL
      update refinery_ironman_stockists
      set    show_on_contact = 1, updated_at = now(), region = 'Australia'
      where  store_type = 'Ironman 4x4 Branch'
      and    (region is null or region != 'Australia');
    SQL
  end
end
