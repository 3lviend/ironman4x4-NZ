module Refinery
  module Ironman
    class OrderLine < Refinery::Core::BaseModel

      validates_presence_of :product_id, :quantity, :net_amount

      belongs_to :product, :class_name => '::Refinery::Ironman::Product'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      after_initialize do
        if self.new_record?
          self.quantity = 0 if self.quantity.nil?
          self.tax_amount = 0 if self.tax_amount.nil?
        end

        calc_net_amount
      end

      def calc_net_amount
        if product.present?
          if product.price.present?
            self.net_amount = product.price * quantity
          else
            self.net_amount = 0
          end
        else
          self.net_amount = 0
        end
      end

    end
  end
end
