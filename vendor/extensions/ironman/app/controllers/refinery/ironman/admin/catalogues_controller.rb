module Refinery
  module Ironman
    module Admin
      class CataloguesController < ::Refinery::AdminController

        crudify :'refinery/ironman/catalogue',
                :xhr_paging => true

      protected
        def catalogue_params
          p = params.require(:catalogue).permit(:title, :description,
            :priced_resource_id, :unpriced_resource_id, :products_link,
            :position, :locale)

          p = massage_params p
        end
      end
    end
  end
end
