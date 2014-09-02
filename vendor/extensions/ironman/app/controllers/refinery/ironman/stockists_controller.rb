module Refinery
  module Ironman
    class StockistsController < ::ApplicationController

      before_filter :find_all_stockists
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @stockist in the line below:
        present(@page)
      end

      def show
        @stockist = Stockist.active.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @stockist in the line below:
        present(@page)
      end

    protected

      def find_all_stockists
        conditions = {}

        if params[:store_type].present?
          conditions[:store_type] = params[:store_type]
        end

        @stockists = Stockist.active.where(conditions).order('name ASC')
        @stockists = @stockists.with_query(params[:stockist_query]) if params[:stockist_query].present?
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/stockists").first
      end

    end
  end
end
