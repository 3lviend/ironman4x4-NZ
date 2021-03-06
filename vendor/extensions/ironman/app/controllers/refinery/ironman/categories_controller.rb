module Refinery
  module Ironman
    class CategoriesController < ::ApplicationController

      before_filter :find_all_categories
      before_filter :find_page

      def children
        category = Category.active.friendly.find(params[:id])
        @categories = [*filter_by_vehicle(category.leaves.active.show_in_products).map { |c| c.self_and_ancestors }.flatten.select { |c| c.active? and c.show_in_products? and c.depth == category.depth + 1 }]
      end

      def index
        if cookies[:fit_my_4x4].present?
          @vehicle_filter = JSON.parse(cookies[:fit_my_4x4]).with_indifferent_access
        end

        if params[:fit_my_4x4] and not cookies[:fit_my_4x4].present?
          redirect_to refinery.fit_my_4x4_path
          return
        end

        if params[:id].present?
          @this_category = Category.active.show_in_products.friendly.find(params[:id])

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
              @products = @this_category.products.active.includes(:vehicles).references(:vehicles).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null and 1=?))', vehicle_ids, (params[:fit_my_4x4]?0:1)).order('refinery_ironman_products.name').paginate(:page => params[:page], :per_page => 12)
            else
              @products = @this_category.products.active.includes(:vehicles).references(:vehicles).order('refinery_ironman_products.name').paginate(:page => params[:page], :per_page => 12)
            end

            # lookup which product index template to use
            @product_index_template = 'product-grid'
            if @this_category.product_index_template == 'inherit'
              parent = @this_category.self_and_ancestors.detect { |c| c.product_index_template != 'inherit' }
              if parent.present?
                @product_index_template = parent.product_index_template
              end
            else
              @product_index_template = @this_category.product_index_template
            end

            render 'refinery/ironman/products/index'

            # you can use meta fields from your model instead (e.g. browser_title)
            # by swapping @page for @category in the line below:
            present(@this_category)
          else
            category = Category.active.friendly.find(params[:id])
            @categories = [*filter_by_vehicle(category.leaves.active.show_in_products).map { |c| c.self_and_ancestors }.flatten.uniq.select { |c| c.active? and c.show_in_products? and c.depth == category.depth + 1 }]

            # you can use meta fields from your model instead (e.g. browser_title)
            # by swapping @page for @category in the line below:
            present(@page)
          end
        else
          @categories = filter_by_vehicle(Category.active.show_in_products).map(&:root).uniq.select(&:active?).select(&:show_in_products?)

          # you can use meta fields from your model instead (e.g. browser_title)
          # by swapping @page for @category in the line below:
          present(@page)
        end
      end

      def show
        @category = Category.active.show_in_products.friendly.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @category in the line below:
        present(@category)
      end

    protected
      def find_all_categories
        @categories = Category.active.show_in_products.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/categories").first
      end

      def filter_by_vehicle(categories)
        if @vehicle_filter.present?
          categories.includes(:products => [:vehicles]).references(:products => [:vehicles]).where('(refinery_ironman_products.draft = 0 and (refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null and 1=?)))', @vehicle_filter.values, (params[:fit_my_4x4]?0:1))
        else
          categories
        end
      end

    end
  end
end
