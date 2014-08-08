# This migration comes from refinery_ironman (originally 10)
class AddShortDescriptionToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :short_description, :string
  end
end
