module Refinery
  module Ironman
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/ironman/product',
                :title_attribute => 'product_no',
                :xhr_paging => true

      protected
        def product_params
          p = params.require(:product).permit(
            :product_no, :name, :description, :notes, :quantity_required,
            :price, :position, :locale, :short_description,
            :thumbnail_image_id, :fitting_instructions_resource_id, :warranty,
            images_attributes: [:id], resources_attributes: [:id],
            specifications_attributes: [:id, :_destroy, :title, :value])

          p
        end
      end
    end
  end
end
