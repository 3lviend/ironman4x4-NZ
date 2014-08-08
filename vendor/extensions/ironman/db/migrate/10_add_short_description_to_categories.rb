class AddShortDescriptionToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :short_description, :string
  end
end
