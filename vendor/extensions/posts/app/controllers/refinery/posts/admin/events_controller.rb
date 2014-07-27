module Refinery
  module Posts
    module Admin
      class EventsController < Refinery::Posts::Admin::PostsController
      protected
        def post_params
          params.require(:event).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :locale, :index_image_id,
            :hero_image_id, :position)
        end
      end
    end
  end
end
