module Refinery
  module Ironman
    class ProductsController < ::ApplicationController

      before_filter :find_all_products
      before_filter :find_page

      def cache_key_for_categories
        count          = Refinery::Ironman::Category.count
        max_updated_at = Refinery::Ironman::Category.maximum(:updated_at).try(:utc).try(:to_s, :number)
        "categories/all-ids-#{count}-#{max_updated_at}"
      end

      def index
        if cookies[:fit_my_4x4].present?
          @vehicle_filter = JSON.parse(cookies[:fit_my_4x4]).with_indifferent_access
        end

        if params[:id].nil?
          if @vehicle_filter.present?
            category_ids = Rails.cache.fetch([@vehicle_filter, :category_ids, cache_key_for_categories]) do
              Category.includes(:products => [:vehicles]).references(:products => [:vehicles]).where('(refinery_ironman_products.draft = 0 and (refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null)))', @vehicle_filter.values).map(&:root).uniq.select(&:active?).map(&:id)
            end

            featured_ids = Rails.cache.fetch([@vehicle_filter, :featured_ids, cache_key_for_categories]) do
              Category.includes(:products => [:vehicles]).references(:products => [:vehicles]).where('(refinery_ironman_products.draft = 0 and (refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null)))', @vehicle_filter.values).map(&:self_and_ancestors).inject {|items, item| items + item }.uniq.select(&:featured?).select(&:active?).map(&:id)
            end

            @categories = Category.find(category_ids)
            @featured = Category.find(featured_ids)
          else
            @categories = Category.roots.active
            @featured = Category.featured.active.limit(8)
          end

          render 'refinery/ironman/categories/index'
        else
          # TODO: is there a way to cache this, so we're not creating multiple db
          # calls here?
          @this_category = Category.active.friendly.find(params[:id])

          if @vehicle_filter.present?
            @products = @this_category.products.active.includes(:vehicles).references(:vehicles).where('(refinery_ironman_vehicles.id in (?) or (refinery_ironman_vehicles.id is null and refinery_ironman_products.id is not null))', @vehicle_filter.values).order('refinery_ironman_products.name').paginate(:page => params[:page], :per_page => 12)
          else
            @products = @this_category.products.active.order('refinery_ironman_products.name').paginate(:page => params[:page], :per_page => 12)
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

    end
  end
end
