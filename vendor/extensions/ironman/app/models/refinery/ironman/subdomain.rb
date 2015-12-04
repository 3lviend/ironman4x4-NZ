module Refinery
  module Ironman
    class Subdomain < Refinery::Core::BaseModel
      acts_as_indexed :fields => [:db_name, :company_name]

      validates :db_name, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
