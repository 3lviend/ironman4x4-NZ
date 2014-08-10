require "spec_helper"

module Refinery
  module Ironman
    module Admin
      describe Enquiry do
        refinery_login_with :refinery_user

        let!(:enquiry) do
          FactoryGirl.create(:enquiry,
            :name => "David Jones",
            :email => "dave@refinerycms.com",
            :message => "Hello, I really like your website. Was it hard to build and maintain or could anyone do it?")
        end

        context "when no" do
          before(:each) { Refinery::Ironman::Enquiry.destroy_all }

          context "enquiries" do
            it "shows message" do
              visit refinery.ironman_admin_enquiries_path

              page.should have_content("You have not received any enquiries yet.")
            end
          end

          context "spam enquiries" do
            it "shows message" do
              visit refinery.spam_ironman_admin_enquiries_path

              page.should have_content("Hooray! You don't have any spam.")
            end
          end
        end

        describe "action links" do
          before(:each) { visit refinery.ironman_admin_enquiries_path }

          specify "in the side pane" do
            within "#actions" do
              page.should have_content("Inbox")
              page.should have_selector("a[href='/#{Refinery::Core.backend_route}/enquiries']")
              page.should have_content("Spam")
              page.should have_selector("a[href='/#{Refinery::Core.backend_route}/enquiries/spam']")
              page.should have_content("Update who gets notified")
              page.should have_selector("a[href*='/#{Refinery::Core.backend_route}/enquiries/settings/enquiry_notification_recipients/edit']")
              page.should have_content("Edit confirmation email")
              page.should have_selector("a[href*='/#{Refinery::Core.backend_route}/enquiries/settings/enquiry_confirmation_body/edit']")
            end
          end
        end

        describe "index" do
          it "shows enquiry list" do
            visit refinery.ironman_admin_enquiries_path

            page.should have_content("David Jones said Hello, I really like your website. Was it hard to build a...")
          end
        end

        describe "show" do
          it "shows enquiry details" do
            visit refinery.ironman_admin_enquiries_path

            click_link "Read the enquiry"

            page.should have_content("From David Jones [dave@refinerycms.com]")
            page.should have_content("Hello, I really like your website. Was it hard to build and maintain or could anyone do it?")
            within "#actions" do
              page.should have_content("Age")
              page.should have_content("Back to all Enquiries")
              page.should have_selector("a[href='/#{Refinery::Core.backend_route}/enquiries']")
              page.should have_content("Remove this enquiry forever")
              page.should have_selector("a[href='/#{Refinery::Core.backend_route}/enquiries/#{enquiry.id}']")
            end
          end
        end

        describe "destroy" do
          it "removes enquiry" do
            visit refinery.ironman_admin_enquiries_path

            click_link "Remove this enquiry forever"

            page.should have_content("'#{enquiry.name}' was successfully removed.")
            Refinery::Ironman::Enquiry.count.should == 0
          end
        end

        describe "spam" do
          it "moves enquiry to spam" do
            visit refinery.ironman_admin_enquiries_path

            click_link "Mark as spam"

            within "#actions" do
              page.should have_content("Spam (1)")
              click_link "Spam (1)"
            end

            page.should have_content("David Jones said Hello, I really like your website. Was it hard to build a...")
          end
        end

        describe "update who gets notified" do
          it "sets receiver", :js => true do
            visit refinery.ironman_admin_enquiries_path

            click_link "Update who gets notified"

            within_frame "dialog_iframe" do
              fill_in "setting_value", :with => "phil@refinerycms.com"
              click_button "submit_button"
            end

            page.should have_content("Notification Recipients was successfully updated.")
          end
        end

        describe "updating confirmation email copy" do
          it "sets message", :js => true do
            visit refinery.ironman_admin_enquiries_path

            click_link "Edit confirmation email"

            within_frame "dialog_iframe" do
              fill_in "setting[subject[en]]", :with => "subject"
              fill_in "setting[message[en]]", :with => "message"
              click_button "Save"
            end

            page.should have_content("Confirmation Body was successfully updated.")
          end
        end

      end
    end
  end
end
