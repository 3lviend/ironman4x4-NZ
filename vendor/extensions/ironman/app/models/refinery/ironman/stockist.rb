module Refinery
  module Ironman
    class Stockist < Refinery::Core::BaseModel

      self.table_name = 'refinery_ironman_stockists'
      acts_as_indexed :fields => [:name, :warehouse_name, :postcode, :suburb, :country, :region]
      geocoded_by :full_street_address
      after_validation :geocode, if: ->(obj){ obj.full_street_address.present? and obj.latitude.nil? and obj.longitude.nil? }

      belongs_to :logo_image, :class_name => '::Refinery::Image'

      alias_attribute :title, :name
      alias_attribute :business_name, :name

      validates_presence_of :name, :address1, :suburb, :state, :country
      validates_uniqueness_of :name
      validates_presence_of :region, if: :show_on_contact
      validates_presence_of :postcode, unless: :show_on_contact

      MAP_PINS = [:red, :green, :grey, :ironman]
      STORE_TYPE = ['Stockist', 'Showroom', 'Ironman 4x4 Branch']

      scope :active, -> { where(visible: true) }
      scope :only_new_zealand, -> { where("country =? OR country = ?", 'New Zealand', "new zealand") }
      scope :show_on_contact, -> { where(show_on_contact: true) }

      after_initialize do
        if self.new_record?
          self.visible = false if self.visible.nil?
        end
      end

      def country=(s)
        super s.titleize
      end

      def website=(link)
        link = link.downcase

        unless link.blank? or link.include?('http://') or link.include?('https://')
          link = 'http://' + link
        end

        super link
      end

      def website
        link = super

        unless link.blank? or link.include?('http://') or link.include?('https://')
          link = 'http://' + link
        end

        link
      end

      def website_min
        website.sub('http://', '').sub('https://', '')
      end

      def websites
        website.split(' / ').map(&:strip).map { |link|
          unless link.include?('http://') or link.include?('https://')
            link = 'http://' + link
          end

          link
        }
      end

      def websites_min
        websites.map { |website| website.sub('http://', '').sub('https://', '') }
      end

      def emails
        email.split('/').map(&:strip)
      end

      def phones
        phone.split('/').map(&:strip)
      end

      def logo_image_url
        logo_image.url if logo_image.present?
      end

      def full_street_address
        [address1, address2, suburb, state, postcode, country].reject(&:blank?).join(', ')
      end

      def visible?
        visible
      end

      def show_on_contact?
        show_on_contact
      end
    end
  end
end
