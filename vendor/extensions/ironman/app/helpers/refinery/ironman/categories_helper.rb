module Refinery
  module Ironman
    module CategoriesHelper

      protected

      def get_product_category_path(category)
        if category.depth == 0
          url = refinery.product_categories_path(category)
        elsif category.depth == 1
          url = refinery.product_subcategories_path(category.parent, category)
        else
          url = refinery.product_sub_subcategories_path(category.parent.parent, category.parent, category)
        end

        url
      end
    end
  end
end
