# This migration comes from refinery_ironman (originally 22)
class CreateIronmanOrderLines < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_order_lines do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :net_amount
      t.decimal :tax_amount
      t.integer :position

      t.timestamps
    end
  end

  def down
    drop_table :refinery_ironman_order_lines
  end

end
