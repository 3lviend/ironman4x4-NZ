module Refinery
  module Ironman
    module Admin
      class WarehousesController < ::Refinery::AdminController

        crudify :'refinery/ironman/warehouse',
                :title_attribute => 'name',
                :xhr_paging => true,
                :searching => true,
                :sortable => false,
                :order => 'refinery_ironman_warehouses.country, refinery_ironman_warehouses.name'

      protected
        def warehouse_params
          params.require(:warehouse).permit(:name, :address1, :address2,
            :suburb, :postcode, :state, :country, :phone, :fax, :latitude,
            :longitude, :position, :locale, :business_name, :email, :website,
            :contact, :region
          )
        end

      end
    end
  end
end
