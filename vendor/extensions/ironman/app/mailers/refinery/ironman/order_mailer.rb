module Refinery
  module Ironman
    class OrderMailer < ActionMailer::Base

      def confirmation(order, request)
        @order, @request = order, request
        mail :subject   => Refinery::Ironman::Setting.order_confirmation_subject(Globalize.locale),
             :to        => order.email,
             :from      => Refinery::Ironman::Setting.order_confirmation_from,
             :reply_to  => Refinery::Ironman::Setting.order_confirmation_reply_to
      end

      def notification(order, request)
        @order, @request = order, request
        # :to        => (if order.stockist.emails.first.present? then order.stockist.emails.first else Refinery::Ironman::Setting.notification_recipients end),
        mail :subject   => Refinery::Ironman::Setting.order_notification_subject,
             :to        => Refinery::Ironman::Setting.order_notification_recipients ,
             :from      => Refinery::Ironman::Setting.order_confirmation_from,
             :reply_to  => order.email
      end

    end
  end
end
