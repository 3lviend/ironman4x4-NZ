# This migration comes from refinery_ironman (originally 28)
class AddFittingInstructionsToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_products, :fitting_instructions_resource_id, :integer
  end
end
