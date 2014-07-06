module Refinery
  module Products
    module Admin
      class VehiclesController < ::Refinery::AdminController

        crudify :'refinery/products/vehicle',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
