module Refinery
  module Ironman
    class FitMyCarController < ::ApplicationController

      before_filter :find_page

      def index
        present(@page)
      end

      def results
        if cookies[:fit_my_4x4].present?
          @vehicle_filter = JSON.parse(cookies[:fit_my_4x4]).with_indifferent_access

          @products = Refinery::Ironman::Product.active.includes(:vehicles).references(:vehicles).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null))', @vehicle_filter.values)
        end

        present(@page)
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/fit-my-4x4").first
      end

    end
  end
end
