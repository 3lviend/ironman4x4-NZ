module Refinery
  module Ironman
    module Admin
      class VehiclesController < ::Refinery::AdminController

        crudify :'refinery/ironman/vehicle',
                :title_attribute => 'name',
                :paging => false,
                :searchable => false

        def index
          @vehicles = Refinery::Ironman::Vehicle.roots
          render_partial_response?
        end

        def reorder
          find_all_vehicles
        end

        # Data example:
        #
        # ul[0][0][id]                 vehicle_1
        # ul[0][0][children][0][0][id] vehicle_2
        # ul[0][0][children][0][1][id] vehicle_3
        # ul[0][1][id]                 vehicle_5
        # ul[0][2][id]                 vehicle_4
        # ul[0][2][children][0][0][id] vehicle_6
        # ul[0][2][children][0][1][id] vehicle_7
        # ul[0][3][id]                 vehicle_8
        # ul[0][3][children][0][0][id] vehicle_9
        # ul[0][3][children][0][1][id] vehicle_10
        # ul[0][3][children][0][2][id] vehicle_11
        # ul[0][3][children][0][3][id] vehicle_12
        # ul[0][3][children][0][4][id] vehicle_13
        # ul[0][3][children][0][5][id] vehicle_14

        # Based upon http://github.com/matenia/jQuery-Awesome-Nested-Set-Drag-and-Drop
        def update_positions
          previous = nil

          Refinery::Ironman::Vehicle.transaction do
            params[:ul].each do |_, list|
              list.each do |index, hash|
                moved_item_id = hash['id'][/\d+\z/]
                @current_vehicle = Refinery::Ironman::Vehicle.find_by_id(moved_item_id)

                if @current_vehicle.present?
                  if not @current_vehicle.root?
                    @current_vehicle.parent = nil
                  end

                  if @current_vehicle.sort_order != index.to_i
                    @current_vehicle.sort_order = index
                  end

                  @current_vehicle.save if @current_vehicle.changed?

                  if hash['children'].present?
                    update_child_positions(hash, @current_vehicle)
                  end
                end

                previous = moved_item_id
              end
            end
          end

          after_update_positions
        end

        def update_child_positions(_node, vehicle)
          list = _node['children']['0']
          list.sort_by {|k, v| k.to_i}.map { |item| item[1] }.each_with_index do |child, index|
            child_id = child['id'].split(/vehicle\_?/).reject(&:empty?).first
            child_vehicle = Refinery::Ironman::Vehicle.where(:id => child_id).first

            if child_vehicle.parent != vehicle
              vehicle.add_child child_vehicle
            end

            if child_vehicle.sort_order != index.to_i
              child_vehicle.sort_order = index
            end

            child_vehicle.save if child_vehicle.changed?

            if child['children'].present?
              update_child_positions(child, child_vehicle)
            end
          end
        end

        def after_update_positions
          @vehicles = Refinery::Ironman::Vehicle.roots
          render :partial => '/refinery/ironman/admin/vehicles/sortable_list' and return
        end

      protected :after_update_positions

      protected
        def vehicle_params
          params.require(:vehicle).permit(:parent_id, :name,
            :short_description, :description, :sort_order, :visible, :featured,
            :id, :locale, :thumbnail_image_id, images_attributes: [:id])
        end
      end
    end
  end
end
