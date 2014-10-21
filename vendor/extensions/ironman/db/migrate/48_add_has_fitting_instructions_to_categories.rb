class AddHasFittingInstructionsToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_categories, :has_fitting_instructions, :boolean, :default => true
  end
end
