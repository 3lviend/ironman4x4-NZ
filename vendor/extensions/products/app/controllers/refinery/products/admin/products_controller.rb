module Refinery
  module Products
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/products/product',
                :title_attribute => 'product_no',
                :xhr_paging => true

      end
    end
  end
end
