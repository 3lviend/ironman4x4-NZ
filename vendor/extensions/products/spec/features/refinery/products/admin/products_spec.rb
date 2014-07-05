# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Products" do
    describe "Admin" do
      describe "products" do
        refinery_login_with :refinery_user

        describe "products list" do
          before do
            FactoryGirl.create(:product, :product_no => "UniqueTitleOne")
            FactoryGirl.create(:product, :product_no => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.products_admin_products_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.products_admin_products_path

            click_link "Add New Product"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Product No", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Products::Product.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Product No can't be blank")
              Refinery::Products::Product.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:product, :product_no => "UniqueTitle") }

            it "should fail" do
              visit refinery.products_admin_products_path

              click_link "Add New Product"

              fill_in "Product No", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Products::Product.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:product, :product_no => "A product_no") }

          it "should succeed" do
            visit refinery.products_admin_products_path

            within ".actions" do
              click_link "Edit this product"
            end

            fill_in "Product No", :with => "A different product_no"
            click_button "Save"

            page.should have_content("'A different product_no' was successfully updated.")
            page.should have_no_content("A product_no")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:product, :product_no => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.products_admin_products_path

            click_link "Remove this product forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Products::Product.count.should == 0
          end
        end

      end
    end
  end
end
