require 'spec_helper'

module Refinery
  module Ironman
    describe Setting do
      describe ".notification_recipients=" do
        it "delegates to Refinery::Setting#set" do
          expect(Refinery::Setting).to receive(:set).
            with(:enquiry_notification_recipients, {
              :value=>"some value",
              :scoping=>"enquiries"
            })

          Refinery::Ironman::Setting.notification_recipients = "some value"
        end
      end
    end
  end
end
