require 'spec_helper'

module Refinery
  module MediaReleases
    describe MediaRelease do
      describe "validations" do
        subject do
          FactoryGirl.create(:media_release,
          :title => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:title) { should == "Refinery CMS" }
      end
    end
  end
end
