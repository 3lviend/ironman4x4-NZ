module Refinery
  module Ironman
    class ProductsController < ::ApplicationController

      before_filter :find_all_products
      before_filter :find_page

      def index
        if cookies[:fit_my_4x4].present?
          @vehicle_filter = JSON.parse(cookies[:fit_my_4x4])
        end

        if params[:id].nil?
          if @vehicle_filter.present?
            @categories = Category.roots.includes(:products => [:vehicles]).references(:products => [:vehicles]).where('refinery_ironman_vehicles.id in (?)', @vehicle_filter.values)
          else
            @categories = Category.roots
          end

          render 'refinery/ironman/categories/index'
        else
          # TODO: is there a way to cache this, so we're not creating multiple db
          # calls here?
          @this_category = Category.friendly.find(params[:id])

          if @vehicle_filter.present?
            @products = @this_category.products.includes(:vehicles).references(:vehicles).where('refinery_ironman_vehicles.id in (?)', @vehicle_filter.values)
          else
            @products = @this_category.products
          end

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
        end

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @product in the line below:
        present(@page)
      end

      def show
        @product = Product.friendly.find(params[:id])
        @category = Category.friendly.find(params[:category_id]) if params[:category_id].present?
        @subcategory = Category.friendly.find(params[:subcategory_id]) if params[:subcategory_id].present?
        @sub_subcategory = Category.friendly.find(params[:sub_subcategory_id]) if params[:sub_subcategory_id].present?

        if @product.present? and params[:id] != @product.slug
          if @sub_subcategory.present?
            path = refinery.products_sub_subcategory_product_path(@sub_subcategory, @subcategory, @category, @product)
          elsif @subcategory.present?
            path = refinery.products_subcategory_product_path(@subcategory, @category, @product)
          elsif @category.present?
            path = refinery.products_category_product_path(@category, @product)
          else
            path = refinery.ironman_product_path(@product)
          end

          redirect_to path, status: :moved_permanently
        end

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @product in the line below:
        present(@product)
      end

    protected

      def find_all_products
        @products = Product.order('product_no ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/products").first
      end

    end
  end
end
