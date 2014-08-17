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
            :product_attribs, :price, :position, :locale, :short_description,
            :thumbnail_image_id, images_attributes: [:id],
            resources_attributes: [:id],
            specifications_attributes: [:id, :_destroy, :title, :value])

          if p[:product_attribs].blank?
            p[:product_attribs] = nil
          end

          p
        end
      end
    end
  end
end
