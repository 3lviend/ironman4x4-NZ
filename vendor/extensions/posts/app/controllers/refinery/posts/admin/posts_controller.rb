module Refinery
  module Posts
    module Admin
      class PostsController < ::Refinery::AdminController

        crudify :'refinery/posts/post',
                :title_attribute => 'type',
                :xhr_paging => true

        def new
          @post = ::Refinery::Posts::Post.new(:author => current_refinery_user)
        end

      protected
        def post_params
          params.require(:post).permit(:type, :title, :teaser, :body,
            :published_at, :expire_at, :draft, :locale, :index_image_id,
            :hero_image_id, :position, :user_id)
        end
      end
    end
  end
end
