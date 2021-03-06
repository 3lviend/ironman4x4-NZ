require 'filters_spam'

module Refinery
  module Ironman
    class Enquiry < Refinery::Core::BaseModel
      acts_as_indexed :fields => [:name, :email, :message]

      filters_spam message_field:    :message,
                   email_field:      :email,
                   author_field:     :name,
                   other_fields:     [:phone],
                   extra_spam_words: %w()

      validates :name, presence: true, length: { maximum: 255 }
      validates :email, format: {
        with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      }, length: { maximum: 255 }
      validates_presence_of :address1, :suburb, :postcode, :state, :country,
        :email, :phone
      belongs_to :vehicle, :class_name => '::Refinery::Ironman::Vehicle'

      default_scope { order('created_at DESC') }

      def self.latest(number = 7, include_spam = false)
        include_spam ? limit(number) : ham.limit(number)
      end

      after_initialize do
        if self.new_record?
          self.receive_news = true if self.receive_news.nil?
        end
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
