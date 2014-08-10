module Refinery
  module Ironman
    class Order < Refinery::Core::BaseModel

      validates_presence_of :order_no, :stockist_id, :name, :address1, :suburb,
        :postcode, :state, :country, :email, :enquiry_type
      validates_uniqueness_of :order_no

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
