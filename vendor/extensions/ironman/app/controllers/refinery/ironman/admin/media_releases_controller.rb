module Refinery
  module Ironman
    module Admin
      class MediaReleasesController < ::Refinery::AdminController

        crudify :'refinery/ironman/media_release',
                :xhr_paging => true,
                :sortable => false

      protected
        def media_release_params
          params.require(:media_release).permit(:title, :description, :category,
            :publication, :published_at, :posted_at, :draft, :locale,
            :thumbnail_image_id, :priced_resource_id, :unpriced_resource_id)
        end

      end
    end
  end
end
