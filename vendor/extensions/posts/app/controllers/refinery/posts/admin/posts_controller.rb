module Refinery
  module Posts
    module Admin
      class PostsController < ::Refinery::AdminController

        crudify :'refinery/posts/post',
                :title_attribute => 'title',
                :xhr_paging => true

        def new
          @post = ::Refinery::Posts::Post.new(:author => current_refinery_user)
        end

      protected
        def massage_params(p)
          time_zone = Refinery::Setting.get(:time_zone)
          datetime_format = Refinery::Setting.get(:datetime_format)

          p[:published_at] =
            Time.strptime(p[:published_at], datetime_format).in_time_zone(time_zone)

          p[:expire_at] =
            Time.strptime(p[:expire_at], datetime_format).in_time_zone(time_zone)

          p
        end

        def post_params
          p = params.require(:post).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :locale, :index_image_id,
            :hero_image_id, :user_id)

          p = massage_params p
        end
      end
    end
  end
end
