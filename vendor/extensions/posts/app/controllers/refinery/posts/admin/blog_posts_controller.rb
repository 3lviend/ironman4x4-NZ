module Refinery
  module Posts
    module Admin
      class BlogPostsController < Refinery::Posts::Admin::PostsController
        def new
          @post = ::Refinery::Posts::BlogPost.new(:author => current_refinery_user)
        end

      protected
        def post_params
          p = params.require(:blog_post).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :locale, :index_image_id,
            :hero_image_id, :user_id)

          p = massage_params p
        end
      end
    end
  end
end
