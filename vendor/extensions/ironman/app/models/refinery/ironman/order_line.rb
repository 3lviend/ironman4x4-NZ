module Refinery
  module Ironman
    class OrderLine < Refinery::Core::BaseModel

      validates_presence_of :order_id, :product_id, :net_amount, :tax_amount

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
