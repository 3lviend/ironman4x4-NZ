module Refinery
  module Posts
    module Admin
      class EventsController < Refinery::Posts::Admin::PostsController
        def new
          @post = ::Refinery::Posts::Event.new(:author => current_refinery_user)
        end

      protected
        def post_params
          p = params.require(:event).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :locale, :index_image_id,
            :hero_image_id, :user_id, :start, :end, :latitude, :longitude,
            :position)

          p = massage_params p
        end
      end
    end
  end
end
