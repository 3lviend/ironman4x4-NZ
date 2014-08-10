require 'refinery/setting'

module Refinery
  module Ironman
    class Setting < ::Refinery::Setting

      class << self
        def confirmation_body
          find_or_set(:enquiry_confirmation_body,
            "Thank you for your enquiry %name%,\n\nThis email is a receipt to confirm we have received your enquiry and we'll be in touch shortly.\n\nThanks."
          )
        end

        def confirmation_subject(locale='en')
          find_or_set(:"enquiry_confirmation_subject_#{locale}",
            "Thank you for your enquiry",
            scoping: "enquiries"
          )
        end

        def confirmation_subject=(locales_subjects)
          locales_subjects.each do |locale, subject|
            set(:"enquiry_confirmation_subject_#{locale}", {
              value: subject,
              scoping: "enquiries"
            })
          end
        end

        def confirmation_message(locale='en')
          find_or_set(:"enquiry_confirmation_message_#{locale}", confirmation_body, scoping: "enquiries")
        end

        def confirmation_message=(locales_messages)
          locales_messages.each do |locale, message|
            set(:"enquiry_confirmation_message_#{locale}", {
              value: message,
              scoping: "enquiries"
            })
          end
        end

        def notification_recipients
          recipients = ((Role[:refinery].users.first.email rescue nil) if defined?(Role)).to_s
          find_or_set(:enquiry_notification_recipients, recipients, scoping: "enquiries")
        end

        def notification_recipients=(recipients)
          set(:enquiry_notification_recipients, {
            value: recipients,
            scoping: "enquiries"
          })
        end

        def notification_subject
          find_or_set(:enquiry_notification_subject, "New enquiry from your website", scoping: "enquiries")
        end

        def send_confirmation?
          find_or_set(:enquiry_send_confirmation, true, scoping: "enquiries")
        end
      end
    end
  end
end
