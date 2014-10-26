module Refinery
  module Ironman
    class FitMyCarController < ::ApplicationController

      before_filter :find_page

      def index
        @homepage_categories = Refinery::Ironman::Category.active.homepage_categories.limit(5)
        present(@page)
      end

      def results
        if cookies[:fit_my_4x4].present?
          @vehicle_filter = JSON.parse(cookies[:fit_my_4x4]).with_indifferent_access

          if params[:id].present?
            @this_category = Category.friendly.find(params[:id])

            @products = @this_category.leaves.map { |c| c.products.active.includes(:vehicles).references(:vehicles).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null))', @vehicle_filter.values) }.flatten.paginate(:page => params[:page], :per_page => 12)

            if @this_category.depth == 0
              @category = @this_category
            elsif @this_category.depth == 1
              @category = @this_category.parent
              @subcategory = @this_category
            elsif @this_category.depth == 2
              @category = @this_category.parent.parent
              @subcategory = @this_category.parent
              @sub_subcategory = @this_category
            end

          else
            @products = Refinery::Ironman::Product.active.includes(:vehicles).references(:vehicles).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null))', @vehicle_filter.values).paginate(:page => params[:page], :per_page => 12)
          end
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
