class UpdateUrls < ActiveRecord::Migration
  def up
    from = '128.199.176.45'
    to = 'www.ironman4x4.com'

    execute <<-SQL
      update refinery_ironman_catalogues
      set    description = replace(description, '#{from}', '#{to}'),
             updated_at = now();
    SQL

    execute <<-SQL
      update refinery_ironman_categories
      set    description = replace(description, '#{from}', '#{to}'),
             short_description = replace(short_description, '#{from}', '#{to}'),
             updated_at = now();
    SQL

    execute <<-SQL
      update refinery_ironman_media_releases
      set    description = replace(description, '#{from}', '#{to}'),
             updated_at = now();
    SQL

    execute <<-SQL
      update refinery_ironman_posts
      set    teaser = replace(teaser, '#{from}', '#{to}'),
             body = replace(body, '#{from}', '#{to}'),
             updated_at = now();
    SQL

    execute <<-SQL
      update refinery_ironman_products
      set    description = replace(description, '#{from}', '#{to}'),
             notes = replace(notes, '#{from}', '#{to}'),
             short_description = replace(short_description, '#{from}', '#{to}'),
             warranty = replace(warranty, '#{from}', '#{to}'),
             updated_at = now();
    SQL

    execute <<-SQL
      update refinery_page_part_translations
      set    body = replace(body, '#{from}', '#{to}'),
             updated_at = now();
    SQL

    execute <<-SQL
      update refinery_page_parts
      set    body = replace(body, '#{from}', '#{to}'),
             updated_at = now();
    SQL
  end

  def down
  end
end
