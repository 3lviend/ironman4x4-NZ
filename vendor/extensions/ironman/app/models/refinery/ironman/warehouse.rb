module Refinery
  module Ironman
    class Warehouse < Refinery::Core::BaseModel

      validates_presence_of :name, :address, :suburb, :postcode, :state, :country
      validates_uniqueness_of :name

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
