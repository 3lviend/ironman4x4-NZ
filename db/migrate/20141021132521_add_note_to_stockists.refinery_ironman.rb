# This migration comes from refinery_ironman (originally 50)
class AddNoteToStockists < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_stockists, :notes, :string
  end
end
