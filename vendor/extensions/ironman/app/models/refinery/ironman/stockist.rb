module Refinery
  module Ironman
    class Stockist < Refinery::Core::BaseModel

      self.table_name = 'refinery_ironman_stockists'
      acts_as_indexed :fields => [:name]

      belongs_to :logo_image, :class_name => '::Refinery::Image'

      validates_presence_of :name, :address, :suburb, :postcode, :state, :country
      validates_uniqueness_of :name

      after_initialize do
        if self.new_record?
          self.visible = true if self.visible.nil?
        end
      end

    end
  end
end
