module Refinery
  module Ironman
    module Admin
      class SubdomainsController < ::Refinery::AdminController

        after_action(
          :create_db_for_subdomain,
          only: [:create]
        )

        crudify :'refinery/ironman/subdomain',
                :title_attribute => 'db_name',
                :xhr_paging => true

        protected

        #
        # create database and fill it with data after creating new subdomain
        #
	def create_db_for_subdomain
          if @subdomain.persisted?
            ::CreateSubdomainDatabaseWorker.perform_async(@subdomain.db_name)
          end
        end

        def subdomain_params
          params.require(:subdomain).permit(:company_name, :db_name)
        end

      end
    end
  end
end
