module Refinery
  module Ironman
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/ironman/category',
                :title_attribute => 'name',
                :paging => false,
                :searchable => false

        def index
          @categories = Refinery::Ironman::Category.roots
          render_partial_response?
        end

        def reorder
          find_all_categories
        end

        # Data example:
        #
        # ul[0][0][id]                 category_1
        # ul[0][0][children][0][0][id] category_2
        # ul[0][0][children][0][1][id] category_3
        # ul[0][1][id]                 category_5
        # ul[0][2][id]                 category_4
        # ul[0][2][children][0][0][id] category_6
        # ul[0][2][children][0][1][id] category_7
        # ul[0][3][id]                 category_8
        # ul[0][3][children][0][0][id] category_9
        # ul[0][3][children][0][1][id] category_10
        # ul[0][3][children][0][2][id] category_11
        # ul[0][3][children][0][3][id] category_12
        # ul[0][3][children][0][4][id] category_13
        # ul[0][3][children][0][5][id] category_14

        # Based upon http://github.com/matenia/jQuery-Awesome-Nested-Set-Drag-and-Drop
        def update_positions
          previous = nil

          Refinery::Ironman::Category.transaction do
            params[:ul].each do |_, list|
              list.each do |index, hash|
                moved_item_id = hash['id'][/\d+\z/]
                @current_category = Refinery::Ironman::Category.find_by_id(moved_item_id)

                if @current_category.present?
                  if not @current_category.root?
                    @current_category.parent = nil
                  end

                  if @current_category.sort_order != index.to_i
                    @current_category.sort_order = index
                  end

                  @current_category.save if @current_category.changed?

                  if hash['children'].present?
                    update_child_positions(hash, @current_category)
                  end
                end

                previous = moved_item_id
              end
            end
          end

          after_update_positions
        end

        def update_child_positions(_node, category)
          list = _node['children']['0']
          list.sort_by {|k, v| k.to_i}.map { |item| item[1] }.each_with_index do |child, index|
            child_id = child['id'].split(/category\_?/).reject(&:empty?).first
            child_category = Refinery::Ironman::Category.where(:id => child_id).first

            if child_category.parent != category
              category.add_child child_category
            end

            if child_category.sort_order != index.to_i
              child_category.sort_order = index
            end

            child_category.save if child_category.changed?

            if child['children'].present?
              update_child_positions(child, child_category)
            end
          end
        end

        def after_update_positions
          @categories = Refinery::Ironman::Category.roots
          render :partial => '/refinery/ironman/admin/categories/sortable_list' and return
        end

      protected :after_update_positions

      protected
        def category_params
          params.require(:category).permit(:parent_id, :name,
            :short_description, :description, :sort_order, :visible, :featured,
            :show_on_homepage, :show_info, :id, :locale, :thumbnail_image_id,
            :has_fitting_instructions, :thumbnail_display_mode,
            images_attributes: [:id, :image_page_id, :caption])
        end
      end
    end
  end
end
