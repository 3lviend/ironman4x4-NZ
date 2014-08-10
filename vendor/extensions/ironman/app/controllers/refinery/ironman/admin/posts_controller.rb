module Refinery
  module Ironman
    module Admin
      class PostsController < ::Refinery::AdminController

        crudify :'refinery/ironman/post',
                :xhr_paging => true

        def new
          @post = ::Refinery::Ironman::Post.new(:author => current_refinery_user)
        end

        def self.sortable?
          false
        end

      protected
        def massage_params(p)
          time_zone = Refinery::Setting.get(:time_zone)
          datetime_format = Refinery::Setting.get(:datetime_format)

          if not p[:published_at].blank?
            p[:published_at] =
              Time.strptime(p[:published_at], datetime_format).in_time_zone(time_zone)
          end

          if not p[:expire_at].blank?
            p[:expire_at] =
              Time.strptime(p[:expire_at], datetime_format).in_time_zone(time_zone)
          end

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
