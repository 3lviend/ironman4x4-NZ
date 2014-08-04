module Refinery
  module Posts
    class BlogPostsController < ::ApplicationController

      before_filter :find_all_blog_posts
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @post in the line below:
        present(@page)

        render 'refinery/posts/posts/index'
      end

      def show
        @post = BlogPost.friendly.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @post in the line below:
        present(@page)

        render 'refinery/posts/posts/show'
      end

    protected

      def find_all_blog_posts
        @posts = BlogPost.order('published_at ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/posts").first
      end

    end
  end
end
