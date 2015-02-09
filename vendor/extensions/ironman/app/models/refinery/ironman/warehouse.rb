module Refinery
  module Ironman
    class Warehouse < Refinery::Core::BaseModel

      acts_as_indexed :fields => [:business_name, :name, :postcode, :suburb, :country]
      geocoded_by :full_street_address
      after_validation :geocode, if: ->(obj){ obj.full_street_address.present? }

      validates_presence_of :name, :region
      validates_uniqueness_of :name

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      def country=(s)
        super s.titleize
      end

      def full_street_address
        [address1, address2, suburb, state, postcode, country].reject(&:blank?).join(', ')
      end
    end
  end
end
