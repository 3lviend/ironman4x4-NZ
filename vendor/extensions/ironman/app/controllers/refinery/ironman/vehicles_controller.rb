module Refinery
  module Ironman
    class VehiclesController < ::ApplicationController

      before_filter :find_all_vehicles
      before_filter :find_page

      def children
        @vehicles = Vehicle.find(params[:id]).children
      end

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @vehicle in the line below:
        present(@page)
      end

      def show
        @vehicle = Vehicle.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @vehicle in the line below:
        present(@page)
      end

    protected

      def find_all_vehicles
        @vehicles = Vehicle.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/vehicles").first
      end

    end
  end
end
