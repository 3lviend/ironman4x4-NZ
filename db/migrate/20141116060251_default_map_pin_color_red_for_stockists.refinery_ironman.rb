# This migration comes from refinery_ironman (originally 56)
class DefaultMapPinColorRedForStockists < ActiveRecord::Migration
  def up
    change_column :refinery_ironman_stockists, :map_pin, :string, :default => 'red'

    execute <<-SQL
      update refinery_ironman_stockists
      set    map_pin = 'red'
      where  map_pin = 'green';
    SQL
  end

  def down
    change_column :refinery_ironman_stockists, :map_pin, :string, :default => 'green'

    execute <<-SQL
      update refinery_ironman_stockists
      set    map_pin = 'green'
      where  map_pin = 'red';
    SQL
  end
end
