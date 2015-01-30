module Refinery
  module Ironman
    class ProductSpecification < Refinery::Core::BaseModel
      validates_presence_of :title
      belongs_to :product, :class_name => '::Refinery::Ironman::Product', :touch => true

      after_initialize do
        self.show_on_product_detail = true if self.show_on_product_detail.nil?
        self.show_on_product_popover = true if self.show_on_product_popover.nil?
      end
    end
  end
end
