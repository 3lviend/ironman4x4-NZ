module Refinery
  module Ironman
    class OrdersController < ::ApplicationController

      before_filter :find_all_orders, :only => [:index, :show]
      before_filter :find_page, :only => [:index, :show]
      before_filter :order_from_cookie, :only => [:new]

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @order in the line below:
        present(@page)
      end

      def show
        @order = Order.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @order in the line below:
        present(@page)
      end

      def new
      end

      def create
      end

    protected

      def find_all_orders
        @orders = Order.order('created_at ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/orders").first
      end

      def order_from_cookie
        @order = Order.new

        if cookies[:wishlist].present?
          lines = []

          items = cookies[:wishlist].split ','
          items.each do |item|
            a = item.split '|'
            product_id = a[0]
            quantity = a[1]
            lines << {
              product_id: product_id,
              quantity: quantity
            }
          end

          @order.lines_attributes = lines
        end
      end

    end
  end
end
