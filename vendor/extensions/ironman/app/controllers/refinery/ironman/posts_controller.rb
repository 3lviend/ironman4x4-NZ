module Refinery
  module Ironman
    class PostsController < ::ApplicationController

      before_filter :find_all_posts
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @post in the line below:
        present(@page)
      end

      def show
        @post = Post.active.friendly.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @post in the line below:
        present(@post)

        if @post.instance_of?(Refinery::Ironman::Event)
          @markers = Gmaps4rails.build_markers([@post]) do |post, marker|
            marker.lat post.latitude
            marker.lng post.longitude
          end

          render 'refinery/ironman/events/show'
        end
      end

    protected

      def find_all_posts
        conditions = {}

        if params[:category].present?
          case params[:category]
          when 'blog_post'
            @type = Refinery::Ironman::BlogPost
          when 'news_item'
            @type = Refinery::Ironman::NewsItem
          when 'event'
            @type = Refinery::Ironman::Event
          end
          conditions[:type] = @type if @type.present?
        end

        if params[:published_month].present?
          published_month = Time.strptime(params[:published_month], '%Y-%m').in_time_zone(Time.zone)
          conditions[:published_at] = published_month.beginning_of_month..published_month.end_of_month
        end

        @posts = Post.active.where(conditions).order('published_at DESC').paginate(:page => params[:page], :per_page => 12)
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/posts").first
      end

    end
  end
end
