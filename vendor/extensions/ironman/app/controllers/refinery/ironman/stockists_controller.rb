module Refinery
  module Ironman
    class StockistsController < ::ApplicationController

      before_filter :find_all_stockists
      before_filter :find_page

      def index
        @markers = Gmaps4rails.build_markers(@stockists) do |stockist, marker|
          marker.title stockist.name
          marker.lat stockist.latitude
          marker.lng stockist.longitude
          marker.infowindow render_to_string(:partial => 'refinery/ironman/stockists/marker_info_window', :locals => { :object => stockist}).gsub(/\n/, '')
          marker.json({ :id => stockist.id })
        end

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
        @stockists = Stockist.active.order('name ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/stockists").first
      end

    end
  end
end
