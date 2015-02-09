module Refinery
  module Ironman
    module Admin
      class NewsItemsController < Refinery::Ironman::Admin::PostsController
        def new
          @post = ::Refinery::Ironman::NewsItem.new(:author => current_refinery_user)
        end

      protected
        def post_params
          p = params.require(:news_item).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :show_on_homepage, :locale,
            :index_image_id, :thumbnail_display_mode, :hero_image_id, :user_id)

          p = massage_params p
        end
      end
    end
  end
end
