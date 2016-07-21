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
            :id => 'refinery_ironman_products.id ' + direction,
            :product_no => 'refinery_ironman_products.product_no ' + direction,
            :title => 'refinery_ironman_products.name ' + direction,
            :category => 'refinery_ironman_categories.name ' + direction,
            :price => 'refinery_ironman_products.price ' + direction
          }.with_indifferent_access

          if params[:category_id].present?
            if conditions == '' then conditions = {} end
            conditions = conditions.merge({refinery_ironman_categories: {id: params[:category_id]}})
          end

          if params[:vehicle_id].present?
            if conditions == '' then conditions = {} end
            conditions = conditions.merge({refinery_ironman_vehicles: {id: params[:vehicle_id]}})
          end

          if params[:show_on_homepage].present? and params[:show_on_homepage] == '1'
            if conditions == '' then conditions = {} end
            conditions = conditions.merge({refinery_ironman_products: {show_on_homepage: true}})
          end

          order = orders[params[:order]] ||= 'refinery_ironman_categories.name, refinery_ironman_products.product_no'

          @products = find_product_scope
                              .where(conditions)
                              .order(order)
        end

        def product_params
          p = params.require(:product).permit(
            :product_no, :name, :description, :notes, :quantity_required,
            :price, :locale, :short_description, :draft, :show_on_homepage, :vehicle_type, 
            :meta_description, :drive_type,
            {:category_ids => []}, {:vehicle_ids => []}, :thumbnail_image_id,
            :thumbnail_display_mode, :fitting_instructions_resource_id,
            :warranty, images_attributes: [:id, :image_page_id, :caption], resources_attributes: [:id],
            specifications_attributes: [:id, :_destroy, :title, :value, :show_on_product_detail, :show_on_product_popover])

          if p[:images_attributes].nil?
            p[:images_attributes] = []
          end

          p
        end
      end
    end
  end
end
