module Refinery
  module Ironman
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/ironman/product',
                :title_attribute => 'product_no',
                :xhr_paging => true,
                :sortable => false,
                :per_page => 100,
                :include => [:categories, :vehicles, :images],
                :order => 'refinery_ironman_categories.name, refinery_ironman_products.product_no'

      protected
        def find_all_products(conditions = {})
          direction = (params[:direction] == 'desc' ? 'desc' : 'asc')

          orders = {
            :product_no => 'refinery_ironman_products.product_no ' + direction,
            :title => 'refinery_ironman_products.name ' + direction,
            :category => 'refinery_ironman_categories.name ' + direction,
            :price => 'refinery_ironman_products.price ' + direction
          }.with_indifferent_access

          if params[:category_id].present?
            if conditions == '' then conditions = {} end
            conditions = conditions.merge({refinery_ironman_categories: {id: params[:category_id]}})
          end

          order = orders[params[:order]] ||= 'refinery_ironman_categories.name, refinery_ironman_products.product_no'

          @products = find_product_scope
                              .where(conditions)
                              .order(order)
        end

        def product_params
          p = params.require(:product).permit(
            :product_no, :name, :description, :notes, :quantity_required,
            :price, :locale, :short_description, :draft, {:category_ids => []},
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
