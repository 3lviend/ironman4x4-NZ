module Refinery
  module Ironman
    class EnquiryMailer < ActionMailer::Base

      def confirmation(enquiry, request)
        @enquiry, @request = enquiry, request
        mail :subject   => Refinery::Ironman::Setting.confirmation_subject(Globalize.locale),
             :to        => enquiry.email,
             :from      => from_info,
             :reply_to  => Refinery::Ironman::Setting.notification_recipients.split(',').first
      end

      def notification(enquiry, request)
        @enquiry, @request = enquiry, request
        mail :subject   => Refinery::Ironman::Setting.notification_subject,
             :to        => Refinery::Ironman::Setting.notification_recipients,
             :from      => from_info,
             :reply_to  => enquiry.email
      end

      private

      def from_info
        "\"#{from_name}\" <#{from_mail}>"
      end

      def from_name
        ::I18n.t('from_name',
                :scope => 'refinery.enquiries.config',
                :site_name => Refinery::Core.site_name,
                :name => @enquiry.name)
      end

      def from_mail
        "#{Refinery::Ironman.from_name}@#{@request.domain}"
      end
    end
  end
end
