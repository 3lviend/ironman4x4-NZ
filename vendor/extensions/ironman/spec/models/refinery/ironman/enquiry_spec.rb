require 'spec_helper'

module Refinery
  module Ironman
    describe Enquiry do
      describe "validations" do
        subject do
          FactoryGirl.build(:enquiry, {
            name: "Ugis Ozols",
            email: "ugis.ozols@refinerycms.com",
            message: "Hey, I'm testing!"
          })
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Ugis Ozols" }
        its(:email) { should == "ugis.ozols@refinerycms.com" }
        its(:message) { should == "Hey, I'm testing!" }

        it "validates name length" do 
            FactoryGirl.build(:enquiry, {
                name: "a"*255,
                email: "ugis.ozols@refinerycms.com",
                message: "This Text Is OK"
            }).should be_valid
            FactoryGirl.build(:enquiry, {
                name: "a"*256,
                email: "ugis.ozols@refinerycms.com",
                message: "This Text Is OK"
            }).should_not be_valid
        end
        it "validates email length" do 
            FactoryGirl.build(:enquiry, {
                name: "Ugis Ozols", 
                email: "a"*239 + "@refinerycms.com",
                message: "This Text Is OK"
            }).should be_valid
            FactoryGirl.build(:enquiry, {
                name: "Ugis Ozols", 
                email: "a"*240 + "@refinerycms.com",
                message: "This Text Is OK"
            }).should_not be_valid
        end
      end

      describe "default scope" do
        it "orders by created_at in desc" do
          enquiry1 = FactoryGirl.create(:enquiry, created_at: 1.hour.ago)
          enquiry2 = FactoryGirl.create(:enquiry, created_at: 2.hours.ago)
          enquiries = Enquiry.all
          enquiries.first.should == enquiry1
          enquiries.second.should == enquiry2
        end
      end

      describe ".latest" do
        it "returns latest 7 non-spam enquiries by default" do
          8.times { FactoryGirl.create(:enquiry) }
          Enquiry.last.toggle!(:spam)
          Enquiry.latest.length.should == 7
        end

        it "returns latest 7 enquiries including spam ones" do
          7.times { FactoryGirl.create(:enquiry) }
          Enquiry.all[0..2].each { |enquiry| enquiry.toggle!(:spam) }
          Enquiry.latest(7, true).length.should == 7
        end

        it "returns latest n enquiries" do
          4.times { FactoryGirl.create(:enquiry) }
          Enquiry.latest(3).length.should == 3
        end
      end
    end
  end
end
