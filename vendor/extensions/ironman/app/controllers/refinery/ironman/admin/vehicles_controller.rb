module Refinery
  module Ironman
    module Admin
      class VehiclesController < ::Refinery::AdminController

        crudify :'refinery/ironman/vehicle',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
