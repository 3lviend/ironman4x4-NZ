require 'spec_helper'

module Refinery
  module Ironman
    describe Subdomain do
      describe "validations" do
        subject do
          FactoryGirl.create(:subdomain,
          :db_name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:db_name) { should == "Refinery CMS" }
      end
    end
  end
end
