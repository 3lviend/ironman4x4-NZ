module Refinery
  module Posts
    module Admin
      class BlogPostsController < Refinery::Posts::Admin::PostsController
      protected
        def post_params
          params.require(:blog_post).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :locale, :index_image_id,
            :hero_image_id, :position, :user_id)
        end
      end
    end
  end
end
