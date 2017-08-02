module Refinery
  module Ironman
    class OrdersController < ::ApplicationController

      before_filter :find_all_warehouses, :only => [:new]
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
        @order = Order.create(order_params)
        @order.ip_address = request.remote_ip
        @order.detected_country = request.location.to_json

        if @order.valid? and @order.save
          flash.notice = t(
            'refinery.crudify.created',
            :what => @order.order_no
          )

          begin
            Refinery::Ironman::OrderMailer.notification(@order, request).deliver
          rescue
            logger.warn "There was an error delivering an order notification.\n#{$!}\n"
          end

          begin
            Refinery::Ironman::OrderMailer.confirmation(@order, request).deliver
          rescue
            logger.warn "There was an error delivering an order confirmation:\n#{$!}\n"
          end

          cookies.delete :wishlist if cookies[:wishlist].present?
          cookies.delete :'wishlist-tab' if cookies[:'wishlist-tab'].present?

          render :confirmation
        else
          find_all_stockists()
          render 'new'
        end
      end

    protected
      def order_params
        p = params.require(:order).permit(:order_no, :stockist_id, :name,
          :address1, :address2, :suburb, :postcode, :state, :country, :email,
          :phone, :enquiry_type, :vehicle_id, :comments, :receive_news, :spam,
          :locale, lines_attributes: [
            :product_id, :quantity, :net_amount, :tax_amount, :position,
            :id, :_destroy, :line_type, :order
          ])

        vehicle_id = [params[:vehicle_1st_id], params[:vehicle_2nd_id], params[:vehicle_3rd_id]].reject(&:blank?).last

        p[:vehicle_id] = vehicle_id if vehicle_id.present?

        p
      end

      def find_all_warehouses
        # @warehouses = Stockist.active.where('lower(region) != ? or (lower(region) = ? and lower(store_type) = ?)', 'australia', 'australia', 'ironman 4x4 branch').where("region is not null and region != ''").order('region asc, name ASC').group_by(&:region)
        @warehouses = Stockist.active.only_new_zealand.head_office.order('region asc, name ASC').group_by(&:region)
      end

      def find_all_stockists
        @all_stockists = Stockist.active

        conditions = {}

        if params[:store_type].present?
          conditions[:store_type] = params[:store_type]
        end

        if params[:services].present?
          conditions[:services] = params[:services]
        end

        @stockists = Stockist.active.where(conditions)

        if params[:stockist_query].present?
          stockist_query = params[:stockist_query]
          countries = Stockist.active.pluck(:country).uniq

          if not countries.any? { |country| stockist_query.downcase.include?(country.downcase) }
            stockist_query = "#{stockist_query}, Australia"
          end

          @stockists = @stockists.near(stockist_query, 3185, :units => :km).first(12)
        else
          @stockists = @stockists.order('state ASC, name ASC').paginate(:page => params[:page], :per_page => 12)
        end
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
