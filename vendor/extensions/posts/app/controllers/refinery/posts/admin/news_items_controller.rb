module Refinery
  module Posts
    module Admin
      class NewsItemsController < Refinery::Posts::Admin::PostsController
      protected
        def post_params
          params.require(:news_item).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :locale, :index_image_id,
            :hero_image_id)
        end
      end
    end
  end
end
