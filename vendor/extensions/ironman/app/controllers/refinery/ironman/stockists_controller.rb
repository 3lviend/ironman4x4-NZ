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
        @all_stockists = Stockist.active

        conditions = {}

        if params[:store_type].present?
          conditions[:store_type] = params[:store_type]
        end

        if params[:services].present?
          conditions[:notes] = params[:services]
        end

        @stockists = Stockist.active.where(conditions)

        if params[:stockist_query].present?
          stockist_query = params[:stockist_query]
          countries = Stockist.active.pluck(:country).uniq

          if not countries.any? { |country| stockist_query.downcase.include?(country.downcase) }
            stockist_query = "#{stockist_query}, Australia"
          end

          @stockists = @stockists.near(stockist_query, 3185, :units => :km).first(12)
        else
          @stockists.order('name ASC')
        end
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/stockists").first
      end

    end
  end
end
