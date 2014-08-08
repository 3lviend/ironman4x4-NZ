require 'spec_helper'

module Refinery
  module Products
    describe Product do
      describe "validations" do
        subject do
          FactoryGirl.create(:product,
          :product_no => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:product_no) { should == "Refinery CMS" }
      end
    end
  end
end
