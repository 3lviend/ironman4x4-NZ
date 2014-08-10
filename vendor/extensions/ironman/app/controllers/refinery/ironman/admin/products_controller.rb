module Refinery
  module Ironman
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/ironman/product',
                :title_attribute => 'product_no',
                :xhr_paging => true

      protected
        def product_params
          p = params.require(:product).permit(:product_no, :name, :description, :notes,
            :quantity_required, :product_attribs, :price, :position, :locale,
            :short_description, images_attributes: [:id])

          if p[:product_attribs].blank?
            p[:product_attribs] = nil
          end

          p
        end
      end
    end
  end
end
