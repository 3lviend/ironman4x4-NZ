class UnlinkCoilSpringFittingInstructions < ActiveRecord::Migration
  def up
    execute <<-SQL
      update refinery_ironman_products
      set    fitting_instructions_resource_id = null,
             updated_at = now()
      where  id in (
        select product_id
        from   refinery_ironman_categories_products
        where  category_id in (
          select id
          from   refinery_ironman_categories
          where  name = 'Coil Springs'
        )
      );
    SQL
  end

  def down
  end
end
