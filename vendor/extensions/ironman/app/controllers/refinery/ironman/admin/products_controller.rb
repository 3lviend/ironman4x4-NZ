module Refinery
  module Ironman
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/ironman/product',
                :title_attribute => 'product_no',
                :xhr_paging => true,
                :sortable => false,
                :per_page => 50,
                :include => [:categories, :vehicles, :images],
                :order => 'refinery_ironman_categories.name, refinery_ironman_products.product_no'

      protected
        def product_params
          p = params.require(:product).permit(
            :product_no, :name, :description, :notes, :quantity_required,
            :price, :locale, :short_description, {:category_ids => []},
            {:vehicle_ids => []}, :thumbnail_image_id,
            :fitting_instructions_resource_id, :warranty,
            images_attributes: [:id], resources_attributes: [:id],
            specifications_attributes: [:id, :_destroy, :title, :value])

          p
        end
      end
    end
  end
end
