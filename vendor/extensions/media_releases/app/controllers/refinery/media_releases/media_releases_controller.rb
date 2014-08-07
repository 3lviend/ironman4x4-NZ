module Refinery
  module MediaReleases
    class MediaReleasesController < ::ApplicationController

      before_filter :find_all_media_releases
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_release in the line below:
        present(@page)
      end

      def show
        @media_release = MediaRelease.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_release in the line below:
        present(@page)
      end

    protected

      def find_all_media_releases
        @media_releases = MediaRelease.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/media_releases").first
      end

    end
  end
end
