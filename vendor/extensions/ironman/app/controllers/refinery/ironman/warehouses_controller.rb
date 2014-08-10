module Refinery
  module Ironman
    class WarehousesController < ::ApplicationController

      before_filter :find_all_warehouses
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @warehouse in the line below:
        present(@page)
      end

      def show
        @warehouse = Warehouse.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @warehouse in the line below:
        present(@page)
      end

    protected

      def find_all_warehouses
        @warehouses = Warehouse.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/warehouses").first
      end

    end
  end
end
