# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Ironman" do
    describe "Admin" do
      describe "warehouses" do
        refinery_login_with :refinery_user

        describe "warehouses list" do
          before do
            FactoryGirl.create(:warehouse, :name => "UniqueTitleOne")
            FactoryGirl.create(:warehouse, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.ironman_admin_warehouses_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.ironman_admin_warehouses_path

            click_link "Add New Warehouse"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Ironman::Warehouse.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Ironman::Warehouse.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:warehouse, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.ironman_admin_warehouses_path

              click_link "Add New Warehouse"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Ironman::Warehouse.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:warehouse, :name => "A name") }

          it "should succeed" do
            visit refinery.ironman_admin_warehouses_path

            within ".actions" do
              click_link "Edit this warehouse"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:warehouse, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.ironman_admin_warehouses_path

            click_link "Remove this warehouse forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Ironman::Warehouse.count.should == 0
          end
        end

      end
    end
  end
end
