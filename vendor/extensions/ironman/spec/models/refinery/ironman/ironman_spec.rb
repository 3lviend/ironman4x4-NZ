require 'spec_helper'

module Refinery
  module Ironman
    describe Ironman do
      describe "validations" do
        subject do
          FactoryGirl.create(:ironman,
          :title => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:title) { should == "Refinery CMS" }
      end
    end
  end
end
