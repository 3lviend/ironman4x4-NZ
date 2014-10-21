# This migration comes from refinery_ironman (originally 47)
class ChangeTypeShortDescriptionOnCategories < ActiveRecord::Migration
  def up
    change_column :refinery_ironman_categories, :short_description, :text
  end

  def down
    change_column :refinery_ironman_categories, :short_description, :string
  end
end
