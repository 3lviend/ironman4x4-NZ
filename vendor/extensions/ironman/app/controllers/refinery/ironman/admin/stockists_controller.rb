module Refinery
  module Ironman
    module Admin
      class StockistsController < ::Refinery::AdminController

        crudify :'refinery/ironman/stockist',
                :title_attribute => 'name',
                :xhr_paging => true

      protected
        def stockist_params
          params.require(:stockist).permit(:name, :store_type, :address,
            :suburb, :postcode, :state, :country, :contact, :phone, :website,
            :email, :logo_image_id, :visible, :position
          )
        end

      end
    end
  end
end
