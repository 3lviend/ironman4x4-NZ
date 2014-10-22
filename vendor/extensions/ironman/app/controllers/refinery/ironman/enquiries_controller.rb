module Refinery
  module Ironman
    class EnquiriesController < ::ApplicationController

      before_filter :find_page, only: [:create, :new]
      before_filter :find_thank_you_page, only: :thank_you

      def thank_you
      end

      def new
        @enquiry = Enquiry.new
        @warehouses = Warehouse.all.order('region asc, position ASC').group_by(&:region)
      end

      def create
        @enquiry = Enquiry.new(enquiry_params)

        if @enquiry.save
          if @enquiry.ham? || Refinery::Ironman.send_notifications_for_enquiries_marked_as_spam
            begin
              Refinery::Ironman::EnquiryMailer.notification(@enquiry, request).deliver
            rescue
              logger.warn "There was an error delivering an enquiry notification.\n#{$!}\n"
            end

            if Setting.send_confirmation?
              begin
                Refinery::Ironman::EnquiryMailer.confirmation(@enquiry, request).deliver
              rescue
                logger.warn "There was an error delivering an enquiry confirmation:\n#{$!}\n"
              end
            end
          end

          redirect_to refinery.thank_you_ironman_enquiries_path
        else
          @warehouses = Warehouse.all.order('region asc, position ASC').group_by(&:region)
          render :action => 'new'
        end
      end

      protected

      def find_page
        @page = Page.where(link_url: '/contact').first
      end

      def find_thank_you_page
        @page = Page.where(link_url: '/contact/thank_you').first
      end

      private

      def enquiry_params
        p = params.require(:enquiry).permit(:name, :address1, :address2, :suburb,
            :postcode, :state, :country, :email, :phone, :enquiry_type,
            :vehicle_id, :message, :receive_news)

        vehicle_id = [params[:vehicle_1st_id], params[:vehicle_2nd_id], params[:vehicle_3rd_id]].reject(&:blank?).last

        p[:vehicle_id] = vehicle_id if vehicle_id.present?
        p[:enquiry_type] = [params[:enquiry_type_vehicle_specific], params[:enquiry_type_general]].reject(&:blank?).last

        p
      end

    end
  end
end
