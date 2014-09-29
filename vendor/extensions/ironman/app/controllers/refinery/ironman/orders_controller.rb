module Refinery
  module Ironman
    class OrdersController < ::ApplicationController

      before_filter :find_all_stockists, :only => [:new]
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
      def find_all_stockists
        conditions = {}

        if params[:store_type].present?
          conditions[:store_type] = params[:store_type]
        end

        @stockists = Stockist.active.where(conditions).order('name ASC')
        @stockists = @stockists.with_query(params[:stockist_query]) if params[:stockist_query].present?
      end

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
            quantity = a[1].to_i
            if not product_id.nil? and quantity >= 1
              lines << {
                product_id: product_id,
                quantity: quantity
              }
            end
          end

          @order.lines_attributes = lines
        end
      end

    end
  end
end
