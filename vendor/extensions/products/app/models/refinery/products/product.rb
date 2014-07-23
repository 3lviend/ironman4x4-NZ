module Refinery
  module Products
    class Product < Refinery::Core::BaseModel
      extend FriendlyId

      #TODO: find out why history isn't working with friendly_id and refinery
      #friendly_id :name, use: [:slugged, :history]
      friendly_id :name, use: :slugged
      acts_as_indexed :fields => [:product_no, :name, :description, :short_description]

      self.table_name = 'refinery_products'

      has_and_belongs_to_many :categories, :join_table => 'refinery_products_categories_products', touch: true
      has_and_belongs_to_many :vehicles, :join_table => 'refinery_products_vehicles_products', touch: true

      alias_attribute :title, :name

      #TODO: turn back on once duplicate product_no's have been sorted
      #validates_uniqueness_of :product_no
      validates_presence_of :product_no, :name, :quantity_required

      after_initialize do
        if self.new_record?
          self.quantity_required = 0 if self.quantity_required.nil?
        end
      end

      def category
        categories.first if not categories.empty?
      end

      def vehicle
        vehicles.first if not vehicles.empty?
      end
    end
  end
end
