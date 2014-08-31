module Refinery
  module Ironman
    class CategoriesController < ::ApplicationController

      before_filter :find_all_categories
      before_filter :find_page

      def children
        @categories = Category.friendly.find(params[:id]).children
      end

      def index
        if params[:id].present?
          @this_category = Category.friendly.find(params[:id])
          @categories = Category.friendly.find(params[:id]).children

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
            @products = category.products
            render 'refinery/ironman/products/index'
          end
        else
          @categories = Category.roots
        end

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @category in the line below:
        present(@page)
      end

      def show
        @category = Category.friendly.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @category in the line below:
        present(@category)
      end

    protected
      def find_all_categories
        @categories = Category.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/categories").first
      end

    end
  end
end
