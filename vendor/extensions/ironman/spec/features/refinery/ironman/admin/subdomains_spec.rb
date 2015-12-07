# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Ironman" do
    describe "Admin" do
      describe "subdomains" do
        refinery_login_with :refinery_user

        describe "subdomains list" do
          before do
            FactoryGirl.create(:subdomain, :db_name => "UniqueTitleOne")
            FactoryGirl.create(:subdomain, :db_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.ironman_admin_subdomains_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.ironman_admin_subdomains_path

            click_link "Add New Subdomain"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Db Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Ironman::Subdomain.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Db Name can't be blank")
              Refinery::Ironman::Subdomain.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:subdomain, :db_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.ironman_admin_subdomains_path

              click_link "Add New Subdomain"

              fill_in "Db Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Ironman::Subdomain.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:subdomain, :db_name => "A db_name") }

          it "should succeed" do
            visit refinery.ironman_admin_subdomains_path

            within ".actions" do
              click_link "Edit this subdomain"
            end

            fill_in "Db Name", :with => "A different db_name"
            click_button "Save"

            page.should have_content("'A different db_name' was successfully updated.")
            page.should have_no_content("A db_name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:subdomain, :db_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.ironman_admin_subdomains_path

            click_link "Remove this subdomain forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Ironman::Subdomain.count.should == 0
          end
        end

      end
    end
  end
end
