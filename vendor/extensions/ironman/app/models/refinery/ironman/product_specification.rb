module Refinery
  module Ironman
    class ProductSpecification < Refinery::Core::BaseModel
      validates_presence_of :title
      belongs_to :product, :class_name => '::Refinery::Ironman::Product', :touch => true
    end
  end
end
