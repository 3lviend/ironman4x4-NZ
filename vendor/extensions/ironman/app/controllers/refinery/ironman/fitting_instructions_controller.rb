module Refinery
  module Ironman
    class FittingInstructionsController < ::ApplicationController

      before_filter :find_page

      def index
        if params[:id].present?
          @this_category = Category.friendly.find(params[:id])

          @products = @this_category.leaves.map { |c| c.products.active.where('fitting_instructions_resource_id is not null') }.flatten.paginate(:page => params[:page], :per_page => 12)

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

          present(@this_category)
        end
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/products").first
      end

    end
  end
end
