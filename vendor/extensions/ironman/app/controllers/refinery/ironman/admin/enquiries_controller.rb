module Refinery
  module Ironman
    module Admin
      class EnquiriesController < ::Refinery::AdminController

        include Refinery::Ironman::Admin::EnquiriesHelper

        crudify :'refinery/ironman/enquiry',
                :title_attribute => 'name',
                :xhr_paging => true

        helper_method :group_by_date

        before_filter :find_all_ham, :only => [:index, :export]
        before_filter :find_all_spam, :only => [:spam]
        before_filter :get_spam_count, :only => [:index, :spam]

        def index
          @enquiries = @enquiries.with_query(params[:search]) if searching?
          @enquiries = @enquiries.page(params[:page])
        end

        def spam
          self.index
          render :action => 'index'
        end

        def toggle_spam
          find_enquiry
          @enquiry.toggle!(:spam)

          redirect_to :back
        end

        def export
          # export between date
          date_from = Date.strptime(params[:from], '%m/%d/%Y').beginning_of_day
          date_to = Date.strptime(params[:to], '%m/%d/%Y').end_of_day
          @enquiries = Refinery::Ironman::Enquiry.where(:created_at => date_from..date_to).ham

          if @enquiries.blank?
            flash[:error] = "Data not found."
            redirect_to :back
          else
            result = do_export(@enquiries, [params[:from], params[:to]])
            if result[:status]
              send_data result[:book], :filename => result[:name], :type =>  "application/vnd.ms-excel"
            else
              flash[:error] = result[:error]
              redirect_to :back
            end
          end
        end

        protected

        def find_all_ham
          @enquiries = Refinery::Ironman::Enquiry.ham
        end

        def find_all_spam
          @enquiries = Refinery::Ironman::Enquiry.spam
        end

        def get_spam_count
          @spam_count = Refinery::Ironman::Enquiry.where(:spam => true).count
        end

      protected
        def enquiry_params
          params.require(:enquiry).permit(:name, :address1, :address2, :suburb,
            :postcode, :state, :country, :email, :phone, :enquiry_type,
            :vehicle_id, :message, :receive_news, :position, :locale)
        end
      end
    end
  end
end
