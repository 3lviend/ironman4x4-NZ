module Refinery
  module MediaReleases
    module Admin
      class MediaReleasesController < ::Refinery::AdminController

        crudify :'refinery/media_releases/media_release',
                :xhr_paging => true

      end
    end
  end
end
