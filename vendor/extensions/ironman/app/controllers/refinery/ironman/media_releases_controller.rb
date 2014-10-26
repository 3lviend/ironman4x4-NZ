module Refinery
  module Ironman
    class MediaReleasesController < ::ApplicationController

      before_filter :find_all_media_releases
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_release in the line below:
        present(@page)
      end

      def show
        @media_release = MediaRelease.active.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_release in the line below:
        present(@media_release)
      end

    protected

      def find_all_media_releases
        conditions = {}

        if params[:category].present?
          conditions[:category] = params[:category]
        end

        if params[:published_month].present?
          published_month = Time.strptime(params[:published_month], '%Y-%m').in_time_zone(Time.zone)
          conditions[:published_at] = published_month.beginning_of_month..published_month.end_of_month
        end

        @media_releases = MediaRelease.active.where(conditions).order('published_at DESC').paginate(:page => params[:page], :per_page => 12)
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/media_releases").first
      end

    end
  end
end
