module Refinery
  module Ironman
    class FitMyCarController < ::ApplicationController

      before_filter :find_page

      def index
        present(@page)
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/fit-my-4x4").first
      end

    end
  end
end
