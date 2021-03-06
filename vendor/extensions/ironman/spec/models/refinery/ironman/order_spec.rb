require 'spec_helper'

module Refinery
  module Ironman
    describe Order do
      describe "validations" do
        subject do
          FactoryGirl.create(:order,
          :order_no => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:order_no) { should == "Refinery CMS" }
      end
    end
  end
end
