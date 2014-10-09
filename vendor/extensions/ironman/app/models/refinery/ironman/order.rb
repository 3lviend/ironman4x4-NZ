module Refinery
  module Ironman
    class Order < Refinery::Core::BaseModel
      has_many :lines, :foreign_key => 'order_id', :class_name => 'Refinery::Ironman::OrderLine', :dependent => :destroy

      validates_presence_of :stockist_id, :name, :address1, :suburb,
        :postcode, :state, :country, :email, :total_amount, :tax_amount

      accepts_nested_attributes_for :lines, :allow_destroy => true

      belongs_to :vehicle, :class_name => '::Refinery::Ironman::Vehicle'
      belongs_to :stockist, :class_name => '::Refinery::Ironman::Stockist'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      after_create do
        # generate order_no
        self.order_no = 1000 + self.id
        save
      end

      after_initialize do
        if self.new_record?
          self.total_amount = 0 if self.total_amount.nil?
          self.tax_amount = 0 if self.tax_amount.nil?
          self.receive_news = true if self.receive_news.nil?
        end

        calc_total_amount
      end

      def calc_total_amount
        total = 0

        if lines.present?
          lines.each do |line|
            total += (line.net_amount + line.tax_amount)
          end
        end

        self.total_amount = total
        self.tax_amount = total * 0.1
      end

      def vehicle_name_full
        if vehicle.present?
          vehicle.name_full
        end
      end

      def full_street_address
        [address1, address2, suburb, postcode, state, country].reject(&:blank?).join(', ')
      end
    end
  end
end
