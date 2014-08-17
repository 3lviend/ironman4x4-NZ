# This migration comes from refinery_ironman (originally 27)
class CreateIronmanProductSpecifications < ActiveRecord::Migration

  def up
    create_table :refinery_ironman_product_specifications do |t|
      t.integer :product_id
      t.string :title
      t.string :value

      t.timestamps
    end
  end

  def down
    drop_table :refinery_ironman_product_specifications
  end

end
