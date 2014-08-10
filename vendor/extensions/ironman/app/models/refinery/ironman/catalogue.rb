module Refinery
  module Ironman
    class Catalogue < Refinery::Core::BaseModel
      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      validates_presence_of :title, :description, :priced_resource_id,
        :unpriced_resource_id, :products_link
      validates_uniqueness_of :title

    end
  end
end
