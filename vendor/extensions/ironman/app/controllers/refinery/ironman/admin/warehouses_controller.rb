module Refinery
  module Ironman
    module Admin
      class WarehousesController < ::Refinery::AdminController

        crudify :'refinery/ironman/warehouse',
                :title_attribute => 'name',
                :xhr_paging => true

      protected
        def warehouse_params
          params.require(:warehouse).permit(:name, :address, :suburb, :postcode,
            :state, :country, :phone, :fax, :latitude, :longitude, :position,
            :locale
          )
        end

      end
    end
  end
end
