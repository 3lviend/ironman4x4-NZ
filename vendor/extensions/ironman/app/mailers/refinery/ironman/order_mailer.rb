module Refinery
  module Ironman
    class OrderMailer < ActionMailer::Base

      def confirmation(order, request)
        @order, @request = order, request
        mail :subject   => Refinery::Ironman::Setting.order_confirmation_subject(Globalize.locale),
             :to        => order.email,
             :from      => from_info,
             :reply_to  => Refinery::Ironman::Setting.notification_recipients.split(',').first
      end

      def notification(order, request)
        @order, @request = order, request
        mail :subject   => Refinery::Ironman::Setting.order_notification_subject,
             :to        => (if order.stockist.emails.first.present? then order.stockist.emails.first else Refinery::Ironman::Setting.notification_recipients end),
             :from      => from_info,
             :reply_to  => order.email
      end

      private

      def from_info
        "\"#{from_name}\" <#{from_mail}>"
      end

      def from_name
        ::I18n.t('from_name',
                :scope => 'refinery.ironman.config',
                :site_name => Refinery::Core.site_name,
                :name => @order.name)
      end

      def from_mail
        "#{Refinery::Ironman.from_name}@#{@request.domain}"
      end
    end
  end
end
