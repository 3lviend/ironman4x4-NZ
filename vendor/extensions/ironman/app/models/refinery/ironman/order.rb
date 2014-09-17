module Refinery
  module Ironman
    class Order < Refinery::Core::BaseModel
      has_many :lines, :foreign_key => 'order_id', :class_name => 'Refinery::Ironman::OrderLine', :dependent => :destroy

      validates_presence_of :order_no, :stockist_id, :name, :address1, :suburb,
        :postcode, :state, :country, :email, :enquiry_type, :total_amount,
        :tax_amount
      validates_uniqueness_of :order_no

      accepts_nested_attributes_for :lines, :allow_destroy => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      before_save do
        # generate order_no
      end

    end
  end
end
