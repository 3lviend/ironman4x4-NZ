# This migration comes from refinery_ironman (originally 48)
class AddHasFittingInstructionsToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :has_fitting_instructions, :boolean, :default => true
  end
end
