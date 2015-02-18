module Refinery
  module Ironman
    class ProductsController < ::ApplicationController

      before_filter :find_all_products
      before_filter :find_page

      def index
        if cookies[:fit_my_4x4].present?
          @vehicle_filter = JSON.parse(cookies[:fit_my_4x4]).with_indifferent_access
        end

        if params[:fit_my_4x4] and not cookies[:fit_my_4x4].present?
          redirect_to refinery.fit_my_4x4_path
          return
        end

        if params[:id].nil?
          if @vehicle_filter.present?
            category_ids = Rails.cache.fetch([@vehicle_filter, :category_ids, cache_key_for_categories, (params[:fit_my_4x4]?:exclude_generic : :include_generic)]) do
              Category.includes(:products => [:vehicles]).references(:products => [:vehicles]).where('(refinery_ironman_categories.show_in_products = 1 and refinery_ironman_products.draft = 0 and (refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null and 1=?)))', @vehicle_filter.values, (params[:fit_my_4x4]?0:1)).map(&:root).uniq.select(&:active?).select(&:show_in_products?).map(&:id)
            end

            featured_ids = Rails.cache.fetch([@vehicle_filter, :featured_ids, cache_key_for_categories, (params[:fit_my_4x4]?:exclude_generic : :include_generic)]) do
              Category.includes(:products => [:vehicles]).references(:products => [:vehicles]).where('(refinery_ironman_categories.show_in_products = 1 and refinery_ironman_products.draft = 0 and (refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null and 1=?)))', @vehicle_filter.values, (params[:fit_my_4x4]?0:1)).map(&:self_and_ancestors).inject {|items, item| items + item }.uniq.select(&:featured?).select(&:active?).select(&:show_in_products?).map(&:id)
            end

            @categories = Category.find(category_ids)
            @featured = Category.find(featured_ids)
          else
            @categories = Category.roots.active.show_in_products
            @featured = Category.featured.active.show_in_products.limit(8)
          end

          render 'refinery/ironman/categories/index'

          present(@page)
        else
          # TODO: is there a way to cache this, so we're not creating multiple db
          # calls here?
          @this_category = Category.active.show_in_products.friendly.find(params[:id])

          # NOTE: moved ordering and pagination on @products into the view, so each product_index_template could have a different order/grouping
          if @vehicle_filter.present?
            @products = @this_category.products.active.includes(:vehicles).references(:vehicles).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null and 1=?))', @vehicle_filter.values, (params[:fit_my_4x4]?0:1))
          else
            @products = @this_category.products.active.includes(:vehicles).references(:vehicles)
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

          # you can use meta fields from your model instead (e.g. browser_title)
          # by swapping @page for @product in the line below:
          present(@this_category)
        end
      end

      def show
        @product = Product.active.friendly.find(params[:id])
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
        @products = Product.active.order('product_no ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/products").first
      end

      def cache_key_for_categories
        count          = Refinery::Ironman::Category.count
        max_updated_at = Refinery::Ironman::Category.maximum(:updated_at).try(:utc).try(:to_s, :number)
        "categories/all-ids-#{count}-#{max_updated_at}"
      end

    end
  end
end
