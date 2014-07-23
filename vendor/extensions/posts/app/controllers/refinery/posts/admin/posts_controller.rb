module Refinery
  module Posts
    module Admin
      class PostsController < ::Refinery::AdminController

        crudify :'refinery/posts/post',
                :title_attribute => 'type',
                :xhr_paging => true

      end
    end
  end
end
