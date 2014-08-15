# This migration comes from refinery_page_resources (originally 20101014230042)
class AddCaptionToResourcePages < ActiveRecord::Migration
  def change
    add_column Refinery::ResourcePage.table_name, :caption, :text
  end
end
