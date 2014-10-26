module Refinery
  module Ironman
    class CategoriesController < ::ApplicationController

      before_filter :find_all_categories
      before_filter :find_page

      def children
        @categories = filter_by_vehicle Category.active.friendly.find(params[:id]).children.active
      end

      def index
        if cookies[:fit_my_4x4].present?
          @vehicle_filter = JSON.parse(cookies[:fit_my_4x4]).with_indifferent_access
        end

        if params[:id].present?
          @this_category = Category.active.friendly.find(params[:id])

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

          if @category.leaf?
            if @vehicle_filter.present?
              vehicle_ids = @vehicle_filter.values
              @products = category.products.active.includes(:vehicles).references(:vehicles).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null))', vehicle_ids).page(params[:page]).per_page(15)
            else
              @products = category.products.active.page(params[:page]).per_page(15)
            end

            render 'refinery/ironman/products/index'
          else
            @categories = filter_by_vehicle Category.active.friendly.find(params[:id]).children.active
          end
        else
          @categories = filter_by_vehicle(Category.active).map(&:root).uniq
        end

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @category in the line below:
        present(@page)
      end

      def show
        @category = Category.active.friendly.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @category in the line below:
        present(@category)
      end

    protected
      def find_all_categories
        @categories = Category.active.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/categories").first
      end

      def filter_by_vehicle(categories)
        if @vehicle_filter.present?
          categories.includes(:products => [:vehicles]).references(:products => [:vehicles]).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null))', @vehicle_filter.values)
        else
          categories
        end
      end

    end
  end
end
