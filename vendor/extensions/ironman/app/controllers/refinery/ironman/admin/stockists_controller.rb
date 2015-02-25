module Refinery
  module Ironman
    module Admin
      class StockistsController < ::Refinery::AdminController

        crudify :'refinery/ironman/stockist',
                :title_attribute => 'name',
                :xhr_paging => true,
                :sortable => false

      protected
        def stockist_params
          params.require(:stockist).permit(:name, :store_type, :address1,
            :address2, :suburb, :postcode, :state, :country, :region, :contact,
            :phone, :website, :email, :logo_image_id, :visible, :map_pin,
            :facebook_page, :latitude, :longitude, :services, :notes,
            :warehouse_name, :fax, :show_on_contact
          )
        end

      end
    end
  end
end
