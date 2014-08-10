# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Ironman" do
    describe "Admin" do
      describe "posts" do
        refinery_login_with :refinery_user

        describe "posts list" do
          before do
            FactoryGirl.create(:post, :title => "UniqueTitleOne")
            FactoryGirl.create(:post, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.ironman_admin_posts_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.ironman_admin_posts_path

            click_link "Add New Post"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Ironman::Post.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Ironman::Post.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:post, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.ironman_admin_posts_path

              click_link "Add New Post"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Ironman::Post.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:post, :title => "A title") }

          it "should succeed" do
            visit refinery.ironman_admin_posts_path

            within ".actions" do
              click_link "Edit this post"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:post, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.ironman_admin_posts_path

            click_link "Remove this post forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Ironman::Post.count.should == 0
          end
        end

      end
    end
  end
end
