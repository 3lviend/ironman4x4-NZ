module Refinery
  module Products
    class Product < Refinery::Core::BaseModel
      extend FriendlyId

      friendly_id :name, use: [:slugged, :history]
      acts_as_indexed :fields => [:product_no, :name, :description]

      self.table_name = 'refinery_products'

      has_and_belongs_to_many :categories, :join_table => 'refinery_products_categories_products', touch: true
      #has_and_belongs_to_many :vehicles, :join_table => 'refinery_products_vehicles_products', touch: true

      validates_uniqueness_of :product_no
      validates_presence_of :product_no, :name, :quantity_required

      after_initialize do
        if self.new_record?
          self.quantity_required = 0 if self.quantity_required.nil?
        end
      end

      def category
        categories.first if not categories.empty?
      end
    end
  end
end
