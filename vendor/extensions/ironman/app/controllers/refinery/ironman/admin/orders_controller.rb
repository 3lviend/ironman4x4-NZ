module Refinery
  module Ironman
    module Admin
      class OrdersController < ::Refinery::AdminController

        crudify :'refinery/ironman/order',
                :title_attribute => 'order_no',
                :xhr_paging => true

      protected
        def order_params
          p = params.require(:order).permit(:order_no, :stockist_id, :name,
            :address1, :address2, :suburb, :postcode, :state, :country, :email,
            :phone, :enquiry_type, :vehicle_id, :comments, :spam, :position,
            :locale)

          p = massage_params p
        end
      end
    end
  end
end
