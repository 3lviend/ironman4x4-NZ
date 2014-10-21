class AddNoteToStockists < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_stockists, :notes, :string
  end
end
