module Refinery
  module Ironman
    class Stockist < Refinery::Core::BaseModel

      self.table_name = 'refinery_ironman_stockists'
      acts_as_indexed :fields => [:name]
      geocoded_by :full_street_address
      after_validation :geocode, if: ->(obj){ obj.full_street_address.present? }

      belongs_to :logo_image, :class_name => '::Refinery::Image'

      validates_presence_of :name, :address, :suburb, :postcode, :state, :country
      validates_uniqueness_of :name

      scope :active, -> { where(visible: true) }

      after_initialize do
        if self.new_record?
          self.visible = true if self.visible.nil?
        end
      end

      def logo_image_url
        logo_image.url if logo_image.present?
      end

      def full_street_address
        [address, suburb, state, postcode, country].reject(&:blank?).join(', ')
      end
    end
  end
end
