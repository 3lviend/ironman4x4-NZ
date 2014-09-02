module Refinery
  module Ironman
    class CataloguesController < ::ApplicationController

      before_filter :find_all_catalogues
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @catalogue in the line below:
        present(@page)
      end

      def show
        @catalogue = Catalogue.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @catalogue in the line below:
        present(@catalogue)
      end

    protected

      def find_all_catalogues
        @catalogues = Catalogue.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/catalogues").first
      end

    end
  end
end
