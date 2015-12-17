module ExportImport
  module Csv
    class Product

      # delimiter for record attributes
      ATTRIBUTES_DELIMITER = '='

      # delimiter for multiple entities
      # should be something that user won't use in names
      DELIMITER = '|'

      #
      # Export products to CVS
      #
      # @param records [<ActiveRecord::Relation>Refinery::Ironman::Product, <Array>Refinery::Ironman::Product]
      def export(records)
        Timeout::timeout(180) do
          CSV.generate do |csv|
            csv << self.class.title_line
            records.each_slice(100) do |batch|
              batch.each do |record|
                csv << self.export_record(record)
              end
            end
          end
        end
      end

      #
      # Product data to row for CVS
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def export_record(record)
        # TODO simplify
        self.attributes_arr.map do |attribute|
          case attribute
          when :categories
            self.get_formatted_category_field(record)
          when :categories_parents
            self.get_formatted_category_parent_field(record)
          when :fitting_instructions_resource
            self.get_formatted_fitting_instructions_resource_field(record)
          when :images
            self.get_formatted_images_field(record)
          when :specifications
            self.get_formatted_specifications_field(record)
          when :thumbnail_image
            self.get_formatted_thumbnail_image_field(record)
          when :vehicles
            self.get_formatted_vehicles_field(record)
          when :delete
            ''
          else
            record.try(attribute)
          end
        end
      end

      #
      # Import products from CVS
      #
      # @param filename [File]
      def import(filename)
        Timeout::timeout(180) do
          CSV.foreach(filename.path, self.csv_options) do |row|
            self.load_record(row.to_hash)
          end
        end
      end

      #
      # CSV columns names
      #
      def self.title_line
        [
          "id", "Product no", "Name", "Description",
          "Short_description", "Notes", "Warranty", "Quantity required", 'Categories',
          "Categories parents", "Price", "Vehicles",
          "Thumbnail image","Thumbnail display mode", "Fitting instructions resource", "Images",
          "Specifications", "Draft", "Show on homepage", "Meta description", "Delete",
        ]
      end

      protected

      #
      # After save record action
      #
      # @param record [Mixed]
      #        data [Hash]
      def after_save_record(record, data)
        self.load_categories(record, data)
        self.load_images(record, data)
        self.load_specifications(record, data)
        self.load_vehicles(record, data)
      end

      #
      # Gets all symbolized product attributes
      #
      # @return [Array]
      def attributes_arr
        @attributes_arr ||= self.class.title_line.map do |column|
          column.parameterize.underscore.to_sym
        end
      end

      #
      # Gets product attributes wich can't be set directly
      #
      # @return [Array]
      def complex_attributes_arr
        %w(categories categories_parents fitting_instructions_resource 
         images specifications thumbnail_image vehicles).map(&:to_sym)
      end

      #
      # Returns csv options
      #
      # @return [Hash]
      def csv_options
        {
          headers: :first_row,
          return_headers: false
        }
      end

      #
      # Get image_data from string to hash
      #
      # @param str [String] product image string
      #
      # @return [Hash]
      def get_image_data_from_string(str)
        res = {}
        names  = %w(image_height image_name image_size image_uid image_width)
        values = str.split(ATTRIBUTES_DELIMITER)
        values.each do |element|
          res[names[values.find_index(element)]] = element
        end
        res
      end

      #
      # Get specification_data from string to hash
      #
      # @param str [String] product specification string
      #
      # @return [Hash]
      def get_specification_data_from_string(str)
        res = {}
        names  = %w(title value show_on_product_detail show_on_product_popover)
        values = str.split(ATTRIBUTES_DELIMITER)
        values.each do |element|
          res[names[values.find_index(element)]] = element
        end
        res
      end

      #
      # Formated category string for export
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def get_formatted_category_field(record)
        record.categories.map do |category|
          category.try(:name)
        end
        .join(DELIMITER)
      end

      #
      # Formated category_parent string for export
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def get_formatted_category_parent_field(record)
        record.categories.map do |category|
          category.try(:parent).try(:name)
        end
        .join(DELIMITER)
      end

      #
      # Formated fitting_instructions_resource string for export
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def get_formatted_fitting_instructions_resource_field(record)
        record.fitting_instructions_resource.try(:file_uid)
      end

      #
      # Formated image string for export
      #
      # @param record [Refinery::Ironman::Image] product image
      #
      # @return [String]
      def get_formatted_image(image)
        res = ''
        # TODO refactor
        %w(height name size uid width).each do |attribute|
          field = "image_#{attribute}"
          res << "#{image.try(field)}#{ATTRIBUTES_DELIMITER}"
        end
        res.chop
      end

      #
      # Formated images string for export
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def get_formatted_images_field(record)
        record.images.map do |image|
          self.get_formatted_image(image)
        end
        .join(DELIMITER)
      end

      #
      # Formated image string for export
      #
      # @param record [Refinery::Ironman::Specification] product specification
      #
      # @return [String]
      def get_formatted_specification(specification)
        res = ''
        # TODO refactor
        %w(title value show_on_product_detail show_on_product_popover).each do |attribute|
          res << "#{specification.try(attribute)}#{ATTRIBUTES_DELIMITER}"
        end
        res.chop
      end

      #
      # Formated specifications string for export
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def get_formatted_specifications_field(record)
        record.specifications.map do |spec|
          self.get_formatted_specification(spec)
        end
        .join(DELIMITER)
      end

      #
      # Formated thumbnail_image string for export
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def get_formatted_thumbnail_image_field(record)
        record.thumbnail_image.try do |image|
          self.get_formatted_image(image)
        end
      end

      #
      # Formated vehicles string for export
      #
      # @param record [Refinery::Ironman::Product] current product
      #
      # @return [String]
      def get_formatted_vehicles_field(record)
        record.vehicles.map do |vehicle|
          vehicle.try(:name_full)
        end
        .join(DELIMITER)
      end

      #
      # Load categories for product
      #
      # @param record [Refinery::Ironman::Product] current product
      # @param data [Hash] data form file
      #
      def load_categories(record, data)
        if data[:complex][:categories].present?
          record.categories.destroy_all
          data[:complex][:categories].split(DELIMITER).each do |c|
            record.categories << Refinery::Ironman::Category.find_or_create_by(name: c)
          end
        end
      end

      #
      # Load images for product
      #
      # @param record [Refinery::Ironman::Product] current product
      # @param data [Hash] data form file
      #
      def load_images(record, data)
        # TODO simplify
        if data[:complex][:images].present?
          data[:complex][:images].split(DELIMITER).each do |img|
            img_record = Refinery::Image.find_or_create_by(
             self.get_image_data_from_string(img)
             )
            img_page_attrs = {
              image: img_record,
              page_id: record.id,
              page_type: "Refinery::Ironman::Product"
            }
            img_page = Refinery::ImagePage.find_or_create_by(img_page_attrs)
            img_page.update_attributes(img_page_attrs)
          end
        end
      end

      #
      # Load specifications for product
      #
      # @param record [Refinery::Ironman::Product] current product
      # @param data [Hash] data form file
      #
      def load_specifications(record, data)
        if data[:complex][:specifications].present?
          record.specifications.destroy_all
          data[:complex][:specifications].split(DELIMITER).each do |spec|
            record.specifications << Refinery::Ironman::ProductSpecification.find_or_create_by(
              self.get_specification_data_from_string(spec)
              )
          end
        end
      end

      #
      # Load vehicles for product
      #
      # @param record [Refinery::Ironman::Product] current product
      # @param data [Hash] data form file
      #
      def load_vehicles(record, data)
        if data[:complex][:vehicles].present?
          record.vehicles.destroy_all
          data[:complex][:vehicles].split(DELIMITER).each do |v|
            record.vehicles << Refinery::Ironman::Vehicle.find_or_create_by(name_full: v)
          end
        end
      end

      #
      # Load record from file row
      #
      # @param data [Hash]
      #
      def load_record(data)
        record_attributes = self.prepare_attributes_for_load(data)
        record_id = record_attributes[:simple].delete(:id)
        delete_record = record_attributes[:simple].delete(:delete)
        if delete_record.present?
          Refinery::Ironman::Product.delete(record_id)
        else
          record = Refinery::Ironman::Product.find_or_create_by(id: record_id)
          record.update_attributes(record_attributes[:simple])
          self.after_save_record(record, record_attributes)
        end
      end

      #
      # Prepares record attributes
      #
      # @param data [Hash]
      #
      # @return record attributes [Hash]
      def prepare_attributes_for_load(data)
        res = {
          complex: {},
          simple: {}
        }
        data.each do |key, value|
          next unless key.present?
          symbol_key = key.parameterize.underscore.to_sym
          if self.complex_attributes_arr.include?(symbol_key)
            res[:complex][symbol_key] = data[key]
          else
            res[:simple][symbol_key] = data[key]
          end
        end
        res
      end

    end
  end
end