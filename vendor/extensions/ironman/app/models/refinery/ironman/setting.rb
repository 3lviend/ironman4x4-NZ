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


        #=======

        def order_confirmation_body
          find_or_set(:order_confirmation_body,
            "Thank you for your enquiry %name%,\n\nThis email is a receipt to confirm we have received your enquiry and we'll be in touch shortly.\n\nThanks."
          )
        end

        def order_confirmation_subject(locale='en')
          find_or_set(:"order_confirmation_subject_#{locale}",
            "Thank you for your order",
            scoping: "orders"
          )
        end

        def order_confirmation_subject=(locales_subjects)
          locales_subjects.each do |locale, subject|
            set(:"order_confirmation_subject_#{locale}", {
              value: subject,
              scoping: "orders"
            })
          end
        end

        def order_confirmation_message(locale='en')
          find_or_set(:"order_confirmation_message_#{locale}", order_confirmation_body, scoping: "orders")
        end

        def order_confirmation_message=(locales_messages)
          locales_messages.each do |locale, message|
            set(:"order_confirmation_message_#{locale}", {
              value: message,
              scoping: "orders"
            })
          end
        end

        def order_confirmation_reply_to
          find_or_set(:"order_confirmation_reply_to", '"Ironman 4x4" <no-reply@ironman4x4.co.nz>', scoping: "orders")
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

        def order_notification_subject
          find_or_set(:order_notification_subject, "New order from Ironman 4x4", scoping: "orders")
        end

        def order_notification_email(region = '', country = '')
          email = nil
          email = get(:"order_notification_email_#{country.downcase.underscore}") if country.present?

          if email.blank?
            email = get(:"order_notification_email_#{region.downcase.underscore}") if region.present?
          end

          if email.blank?
            email = get(:"order_notification_email")
          end

          [email, 'enquiries@terraquip.co.nz']
        end

        def order_confirmation_from
          find_or_set(:"order_confirmation_from", '"Ironman 4x4" <no-reply@ironman4x4.co.nz>', scoping: "orders")
        end

        def order_notification_from
          find_or_set(:"order_confirmation_from", '"Ironman 4x4" <no-reply@ironman4x4.co.nz>', scoping: "orders")
        end

        def send_confirmation?
          find_or_set(:enquiry_send_confirmation, true, scoping: "enquiries")
        end
      end
    end
  end
end
