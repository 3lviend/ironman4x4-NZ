class AddShortDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :refinery_products, :short_description, :string
  end
end
