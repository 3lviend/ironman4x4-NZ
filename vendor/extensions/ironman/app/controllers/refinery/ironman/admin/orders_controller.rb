module Refinery
  module Ironman
    module Admin
      class OrdersController < ::Refinery::AdminController

        crudify :'refinery/ironman/order',
                :title_attribute => 'order_no',
                :xhr_paging => true,
                :sortable => false,
                :order => 'refinery_ironman_orders.created_at desc'

      protected
        def order_params
          params.require(:order).permit(:order_no, :stockist_id, :name,
            :address1, :address2, :suburb, :postcode, :state, :country, :email,
            :phone, :enquiry_type, :vehicle_id, :comments, :receive_news, :spam,
            :locale, lines_attributes: [
              :product_id, :quantity, :net_amount, :tax_amount, :position,
              :id, :_destroy, :line_type, :order
            ])
        end
      end
    end
  end
end
