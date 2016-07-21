module Refinery
  module Ironman
    class VehiclesController < ::ApplicationController

      before_filter :find_all_vehicles, :except => [:show_rear_type, :find_vehicle_type, :find_drive_type, :find_lift_estimate, :calculate_front_springs, :calculate_rear_wagon_setup, :calculate_rear_ute_setup, :front_shocks_setup, :rear_shocks_setup]
      before_filter :find_page, :except => [:show_rear_type, :find_vehicle_type, :find_drive_type, :find_lift_estimate, :calculate_front_springs, :calculate_rear_wagon_setup, :calculate_rear_ute_setup, :front_shocks_setup, :rear_shocks_setup]

      before_filter :find_vechicle, :only => [:show_rear_type, :find_vehicle_type, :find_drive_type, :find_lift_estimate, :calculate_front_springs, :front_shocks_setup, :rear_shocks_setup]
      before_filter :find_rear_setup, :only => [:calculate_rear_wagon_setup, :calculate_rear_ute_setup]
      before_filter :find_mandatory_setup, :only => [:mandatory_component_setup, :optional_component_setup, :update_mandatory_sidebar, :update_optional_sidebar]

      def children
        @vehicles = Vehicle.find(params[:id]).children.active
      end

      def show_rear_type
        respond_to do |format|
          format.js
        end
      end

      def find_vehicle_type      

        @products = @vehicle.products.map { |product| product }
        @products.reject! { |p| p.blank? }

        unless @products.blank?
          @hash_value = @products[0].vehicle_types(@products)
        end

        return @hash_value
      end

      def find_drive_type
        @products = @vehicle.products.map { |product| product }
        @products.reject! { |p| p.blank? }

        unless @products.blank?
          @hash_value = @products[0].drive_types(@products)
        end

        return @hash_value
      end

      def find_lift_estimate
       
        @specifications = @vehicle.products.map do |product|
          # product.specifications.where(:category_id => [72, 77, 84])
          product.specifications.where(:title => "Estimated Lift")
          # product.specifications.where([ "category_id in (?) and title = ? ", [72, 77, 84], "Estimated Lift"])
        end
        
        @hash_value = [{}]
        @specifications.flatten!

        unless @specifications.blank?
          @hash_value = @specifications[0].calculate_lift_estimate(@specifications,@hash_value)
        end

        return @hash_value
      end

      def calculate_front_springs

        steel_bar = params[:bullbar_steel].blank? ? 0 : params[:bullbar_steel]
        alloy_bar = params[:bullbar_alloy].blank? ? 0 : params[:bullbar_alloy]
        winch_rope = params[:bullbar_rope].blank? ? 0 : params[:bullbar_rope]
        winch_cable = params[:bullbar_cable].blank? ? 0 : params[:bullbar_cable]
        batteries = params[:bullbar_batteries].blank? ? 0 : params[:bullbar_batteries]
        others = params[:others].blank? ? 0 : params[:others]
        others = others.split("_") unless others == 0

        @products = @vehicle.products.where('name LIKE ?', '%front%').where('name LIKE ? || ? || ? ', '%Coil Springs%',  '%Leaf Springs%', '%Torsion Bars%') unless @vehicle.blank?
        total_weights = steel_bar.to_i + alloy_bar.to_i + winch_rope.to_i + winch_cable.to_i + batteries.to_i + others[1].to_i

        unless @products.blank?
          @specifications = @products.map do |product|
            product.specifications.where(:title => "Additional Load")
          end
        end

        @specifications.flatten! unless @specifications.blank?

        unless @specifications.blank?
          product_id = @specifications[0].calculate_front_spring_specification(@specifications, total_weights)
          @product = @products.where(id: product_id).first
        end

        respond_to do |format|
          format.js
        end        
      end

      def calculate_rear_wagon_setup
        drawer_system = params[:drawer_system].blank? ? 0 : params[:drawer_system]
        fuel_tank = params[:fuel_tank].blank? ? 0 : params[:fuel_tank]
        steel_bar = params[:steel_bar].blank? ? 0 : params[:steel_bar]
        stell_bar_single = params[:stell_bar_single].blank? ? 0 : params[:stell_bar_single]
        steel_bar_dual = params[:steel_bar_dual].blank? ? 0 : params[:steel_bar_dual]
        alloy_roof = params[:alloy_roof].blank? ? 0 : params[:alloy_roof]
        secondary_battery = params[:secondary_battery].blank? ? 0 : params[:secondary_battery]
        fridge = params[:fridge].blank? ? 0 : params[:fridge]
        roof_tent = params[:roof_tent].blank? ? 0 : params[:roof_tent]
        laggage = params[:laggage].blank? ? 0 : params[:laggage]
        water_tank = params[:water_tank].blank? ? 0 : params[:water_tank]
        rear_other = params[:rear_other].blank? ? 0 : params[:rear_other]
       
        total_weights = drawer_system.to_i + fuel_tank.to_i + steel_bar.to_i + stell_bar_single.to_i + steel_bar_dual.to_i + alloy_roof.to_i + secondary_battery.to_i + fridge.to_i + roof_tent.to_i + laggage.to_i + water_tank.to_i + rear_other.to_i

        unless @products.blank?
          product_id = @products[0].rear_setup(@specifications, total_weights)
          @product = @products.where(id: product_id).first          
        end

        respond_to do |format|
          format.js
        end 
      end

      def calculate_rear_ute_setup
        canopy = params[:canopy].blank? ? 0 : params[:canopy]
        steel_canopy = params[:steel_canopy].blank? ? 0 : params[:steel_canopy]
        steel_tray = params[:steel_tray].blank? ? 0 : params[:steel_tray]
        range_rank = params[:range_rank].blank? ? 0 : params[:range_rank]
        steel_roof_rack = params[:steel_roof_rack].blank? ? 0 : params[:steel_roof_rack]
        alloy_roof_rack = params[:alloy_roof_rack].blank? ? 0 : params[:alloy_roof_rack]
        roof_top_tent = params[:roof_top_tent].blank? ? 0 : params[:roof_top_tent]
        drawer_system = params[:drawer_system].blank? ? 0 : params[:drawer_system]
        laggage = params[:laggage].blank? ? 0 : params[:laggage]
        water_tank = params[:water_tank].blank? ? 0 : params[:water_tank]
        rear_other = params[:rear_other].blank? ? 0 : params[:rear_other]

        total_weights = canopy.to_i+steel_canopy.to_i+steel_tray.to_i+range_rank.to_i+steel_roof_rack.to_i+alloy_roof_rack.to_i+roof_top_tent.to_i+drawer_system.to_i+laggage.to_i+water_tank.to_i+rear_other.to_i

        unless @products.blank?
          product_id = @products[0].rear_setup(@specifications, total_weights)
          @product = @products.where(id: product_id).first          
        end

        respond_to do |format|
          format.js
        end        
      end

      def front_shocks_setup
        if (params[:lift_estimate].eql?("0mm") || params[:lift_estimate].eql?("1mm - 50mm"))
          @products = @vehicle.products.where('name LIKE ? or name LIKE ?', '%Front Shock Absorber%', '%Front Strut%')
        elsif (params[:lift_estimate].eql?("51mm - 100mm"))
          @products = @vehicle.products.where('name LIKE ? and name LIKE ? or name LIKE ?', '%Front Shock Absorber%', '%4"%', '%Front Strut%')
        elsif (params[:lift_estimate].eql?("101mm - 150mm"))
          @products = @vehicle.products.where('name LIKE ? and name LIKE ? or name LIKE ?', '%Front Shock Absorber%', '%6"%', '%Front Strut%')
        end

        respond_to do |format|
          format.js
        end        
      end

      def rear_shocks_setup
        if (params[:lift_estimate].eql?("0mm") || params[:lift_estimate].eql?("1mm - 50mm"))
          @products = @vehicle.products.where('name LIKE ? or name LIKE ?', '%Rear Shock Absorber%', '%Rear Strut%')
        elsif (params[:lift_estimate].eql?("51mm - 100mm"))
          @products = @vehicle.products.where('name LIKE ? and name LIKE ? or name LIKE ?', '%Rear Shock Absorber%', '%4"%', '%Rear Strut%')
        elsif (params[:lift_estimate].eql?("101mm - 150mm"))
          @products = @vehicle.products.where('name LIKE ? and name LIKE ? or name LIKE ?', '%Rear Shock Absorber%', '%6"%', '%Rear Strut%')
        end

        respond_to do |format|
          format.js
        end        
      end

      def mandatory_component_setup
        if (params[:lift_estimate].eql?("0mm"))
          components = Vehicle::MANDATORY_0MM
        elsif (params[:lift_estimate].eql?("1mm - 50mm"))
          components = Vehicle::MANDATORY_50MM
        elsif (params[:lift_estimate].eql?("51mm - 100mm") || params[:lift_estimate].eql?("101mm - 150mm"))
          components = Vehicle::MANDATORY_100MM
        end

        @components=[]
        @products.each do |product|
            product.categories.each do |category|
              @components << product if components.include?(category.name)
            end
        end
        
        respond_to do |format|
          format.js
        end
      end

      def update_mandatory_sidebar
        mandatory_id = params[:mandatory_id]
        @product = []

        unless mandatory_id.blank?
          mandatory_id.each do |item|
            @product << @vehicle.products.where(id:item)
          end
          @product.flatten!
        end
        respond_to do |format|
          format.js
        end
      end

      def optional_component_setup
        if (params[:lift_estimate].eql?("0mm"))
          components = Vehicle::OPTIONAL_0MM
        elsif (params[:lift_estimate].eql?("1mm - 50mm"))
          components = Vehicle::OPTIONAL_50MM
        elsif (params[:lift_estimate].eql?("51mm - 100mm") || params[:lift_estimate].eql?("101mm - 150mm"))
          components = Vehicle::OPTIONAL_100MM
        end

        @components=[]
        @products.each do |product|
            product.categories.each do |category|
              @components << product if components.include?(category.name)
            end
        end

        respond_to do |format|
          format.js
        end
      end

      def update_optional_sidebar
        optional = params[:optional]
        @product = []

        unless optional.blank?        
          optional.each do |item|
            @product << @vehicle.products.where(id:item)
          end
          @product.flatten!
        end
        respond_to do |format|
          format.js
        end
      end


      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @vehicle in the line below:
        present(@page)
      end

      def show
        @vehicle = Vehicle.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @vehicle in the line below:
        present(@page)
      end

    protected

      def find_all_vehicles
        @vehicles = Vehicle.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/vehicles").first
      end

      def find_vechicle
        @vehicle = Vehicle.includes(:refinery_ironman_vehicles_products).where(:id => params[:id]).first
      end

      def find_rear_setup
        find_vechicle
  
        unless @vehicle.blank?
          @products = @vehicle.products.where('name LIKE ?', '%rear%').where('name LIKE ? || ? || ? ', '%Coil Springs%',  '%Leaf Springs%', '%Torsion Bars%')
          unless @products.blank?
            @specifications = @products.map do |product|
              product.specifications.where(title: 'Additional Load')
            end
          end
        end
      end

      def find_mandatory_setup
        find_vechicle
        @products = @vehicle.products
      end

    end
  end
end
