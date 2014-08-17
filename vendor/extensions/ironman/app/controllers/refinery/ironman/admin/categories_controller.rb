module Refinery
  module Ironman
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/ironman/category',
                :title_attribute => 'name',
                :xhr_paging => true

      protected
        def category_params
          params.require(:category).permit(:parent_id, :name,
            :short_description, :description, :sort_order, :visible, :featured,
            :id, :locale, images_attributes: [:id], :thumbnail_image_id)
        end
      end
    end
  end
end
