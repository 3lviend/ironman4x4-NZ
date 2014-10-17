# This migration comes from refinery_ironman (originally 43)
class AddShowHomepageToPosts < ActiveRecord::Migration
  def change
    add_column :refinery_ironman_posts, :show_on_homepage, :boolean, :default => false
  end
end
