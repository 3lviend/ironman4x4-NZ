module Refinery
  module Ironman
    module Admin
      class CataloguesController < ::Refinery::AdminController

        crudify :'refinery/ironman/catalogue',
                :xhr_paging => true,
                :searchable => false,
                :sortable => false

      protected
        def catalogue_params
          params.require(:catalogue).permit(:title, :description,
            :priced_resource_id, :unpriced_resource_id, :products_link,
            :cover_image_id, :position, :locale)
        end
      end
    end
  end
end
