module Refinery
  module Ironman
    class NewsletterController < ::ApplicationController
      before_filter :find_page

      def subscribe
        @list_id = ENV['MAILCHIMP_LIST_ID']

        gb = Gibbon::API.new

        gb.lists.subscribe({
          :id => @list_id,
          :email => {:email => params[:email][:address]}
        })

        redirect_to refinery.newsletter_thank_you_path
      end

      def thank_you
        present(@page)
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/newsletter/thank-you").first
      end
    end
  end
end
