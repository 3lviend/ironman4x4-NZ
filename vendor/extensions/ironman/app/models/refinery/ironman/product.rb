module Refinery
  module Ironman
    class Product < Refinery::Core::BaseModel
      extend FriendlyId

      before_save :touch_categories

      #TODO: find out why history isn't working with friendly_id and refinery
      #friendly_id :name, use: [:slugged, :history]
      friendly_id :name, use: :slugged
      acts_as_indexed :fields => [:product_no, :name, :description, :short_description]

      self.table_name = 'refinery_ironman_products'

      has_and_belongs_to_many :categories, :join_table => 'refinery_ironman_categories_products'
      has_and_belongs_to_many :vehicles, :join_table => 'refinery_ironman_vehicles_products'
      belongs_to :thumbnail_image, :class_name => '::Refinery::Image'
      belongs_to :fitting_instructions_resource, :class_name => '::Refinery::Resource'
      has_many :specifications, :class_name => '::Refinery::Ironman::ProductSpecification'

      alias_attribute :title, :name

      scope :active, -> { where(draft: false) }
      scope :homepage_products, -> { where(show_on_homepage: true) }

      # scope :lift_estimate, -> { joins(:specifications).where('category_id = ? and title = ?', [72, 77, 84], 'Estimated Lift') }
      scope :lift_estimate, -> { joins(:specifications).where('title = ?', 'Estimated Lift') }

      #TODO: turn back on once duplicate product_no's have been sorted
      #validates_uniqueness_of :product_no
      validates_presence_of :product_no, :name, :quantity_required

      accepts_nested_attributes_for :specifications, :allow_destroy => true

      before_destroy do
        categories.clear
        vehicles.clear
      end

      after_initialize do
        if self.new_record?
          self.draft = true if self.draft.nil?
          self.show_on_homepage = false if self.show_on_homepage.nil?
          self.quantity_required = 0 if self.quantity_required.nil?
        end
      end

      def touch_categories
        categories.each(&:touch)
      end

      def category
        categories.first if not categories.empty?
      end

      def vehicle
        vehicles.first if not vehicles.empty?
      end

      def active?
        not draft
      end

      def draft?
        draft
      end

      def show_on_homepage?
        show_on_homepage
      end

      def images_with_captions
        @images_with_captions = image_pages.map do |ref|
          {
            image: Refinery::Image.find(ref.image_id),
            caption: ref.caption || ''
          }
        end
      end

      def specs(display_mode = :all)
        specs = {}

        self.category.specifications.each do |specification|
          if display_mode == :all or (display_mode == :detail and specification.show_on_product_detail) or (display_mode == :popover and specification.show_on_product_popover)
            specs[specification.title] = specification.value if specification.value.present?
          end
        end

        specs["Quantity Required"] = quantity_required if quantity_required.present? and quantity_required != 0 and specs["Quantity Required"].nil?
        self.specifications.each do |specification|
          if display_mode == :all or (display_mode == :detail and specification.show_on_product_detail) or (display_mode == :popover and specification.show_on_product_popover)
            specs[specification.title] = specification.value if specification.value.present? and specs[specification.title].nil?
          end
        end

        specs
      end

      def rear_setup(specifications, total_weights)

        @specifications = specifications

        unless @specifications.blank?
          @specifications.flatten!
          @spec = @specifications.collect(&:value).uniq

          match = ""
          gvm_check = @spec.to_s.include?("GVM")

          if total_weights == 0
            gvm_check = false
          else
            @spec.each do |sp|            
              if(sp.split("-")[0].gsub("kg","").to_i < total_weights && sp.split("-")[1].gsub("kg","").to_i > total_weights)
                match = sp.split("-")[1].gsub("kg ","")
                gvm_check = false
              end
            end         
          end

          product_id = ""
          @specifications.each do |s|
            if gvm_check
              product_id = s.product_id if s.value.include?("GVM")
            elsif total_weights == 0
              product_id = @specifications[0].product_id
            else
              product_id = s.product_id if s.value.include?(match) && !s.value.include?("GVM")
            end
          end                  
        end          
        return product_id
      end

      def thumbnail_display_mode_cached
        # TODO: add caching
        if thumbnail_display_mode.present?
          thumbnail_display_mode
        elsif not categories.empty?
          categories.first.thumbnail_display_mode
        end
      end

      def self.to_csv(options = {})
        CSV.generate(options) do |csv|
          csv << ExportImport::Csv::Product.title_line
          Product.find_each(batch_size: 50) do |product|
            csv << ExportImport::Csv::Product.new.export_record(product)
          end
        end
      end

      def vehicle_types(products)       
        @products = products

        @pro = @products.collect(&:vehicle_type).uniq
        @pro.reject! { |p| p.blank? }

        if !@pro.blank?
          if @pro.count == 2
            @hash_value = [{},{}]
          elsif @pro.count ==1
            @hash_value = [{}]
          end
          (0..@pro.count-1).each do |p|
            if @pro[p] == "petrol"
              @hash_value[p].merge!({id: '1', name:'Petrol'})
            end
            if @pro[p] == "diesel"
              @hash_value[p].merge!({id: '2', name: 'Diesel'})
            end
          end
        end

        return @hash_value
      end

      def drive_types(products)
        @products = products
        @pro = @products.collect(&:drive_type).uniq
        @pro.reject! { |p| p.blank? }

        if !@pro.blank?
          if @pro.count == 2
            @hash_value = [{},{}]
          elsif @pro.count ==1
            @hash_value = [{}]
          end
            
          (0..@pro.count-1).each do |p|
            if @pro[p] == "right_hand"
              @hash_value[p].merge!({id: '1', name:'Right Hand'})
            end
            if @pro[p] == "left_hand"
              @hash_value[p].merge!({id: '2', name: 'Light Hand'})
            end
          end
        end
        return @hash_value
      end

    end
  end
end
