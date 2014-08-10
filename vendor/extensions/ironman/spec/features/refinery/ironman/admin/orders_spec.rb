# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Ironman" do
    describe "Admin" do
      describe "orders" do
        refinery_login_with :refinery_user

        describe "orders list" do
          before do
            FactoryGirl.create(:order, :order_no => "UniqueTitleOne")
            FactoryGirl.create(:order, :order_no => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.ironman_admin_orders_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.ironman_admin_orders_path

            click_link "Add New Order"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Order No", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Ironman::Order.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Order No can't be blank")
              Refinery::Ironman::Order.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:order, :order_no => "UniqueTitle") }

            it "should fail" do
              visit refinery.ironman_admin_orders_path

              click_link "Add New Order"

              fill_in "Order No", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Ironman::Order.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:order, :order_no => "A order_no") }

          it "should succeed" do
            visit refinery.ironman_admin_orders_path

            within ".actions" do
              click_link "Edit this order"
            end

            fill_in "Order No", :with => "A different order_no"
            click_button "Save"

            page.should have_content("'A different order_no' was successfully updated.")
            page.should have_no_content("A order_no")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:order, :order_no => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.ironman_admin_orders_path

            click_link "Remove this order forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Ironman::Order.count.should == 0
          end
        end

      end
    end
  end
end
