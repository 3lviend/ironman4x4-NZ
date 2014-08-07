module Refinery
  module MediaReleases
    module Admin
      class MediaReleasesController < ::Refinery::AdminController

        crudify :'refinery/media_releases/media_release',
                :xhr_paging => true

      protected
        def media_releases_params
          params.require(:media_release).permit(:title, :description, :category,
            :publication, :published_at, :posted_at, :draft, :locale,
            :thumbnail_image_id, :priced_resource_id, :unpriced_resource_id,
            :position)
        end

      end
    end
  end
end
