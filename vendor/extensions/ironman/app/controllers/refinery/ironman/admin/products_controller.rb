module Refinery
  module Ironman
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/ironman/product',
                :title_attribute => 'product_no',
                :xhr_paging => true

      end
    end
  end
end
