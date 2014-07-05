module Refinery
  module Products
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/products/category',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
