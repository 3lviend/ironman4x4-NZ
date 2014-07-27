module Refinery
  module Posts
    module Admin
      class PostsController < ::Refinery::AdminController

        crudify :'refinery/posts/post',
                :title_attribute => 'type',
                :xhr_paging => true

      protected
        def post_params
          params.require(:post).permit(:type, :title,
            :teaser, :body, :published_at, :expire_at, :draft,
            :locale)
        end
      end
    end
  end
end
