# This migration comes from refinery_page_resources (originally 20110527052435)
class ChangeResourcePageToPolymorphic < ActiveRecord::Migration
  def change
    add_column Refinery::ResourcePage.table_name, :page_type, :string, :default => "page"
  end
end
