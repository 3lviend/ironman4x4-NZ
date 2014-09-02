module Refinery
  module Ironman
    class Catalogue < Refinery::Core::BaseModel
      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      belongs_to :unpriced_resource, :class_name => '::Refinery::Resource'
      belongs_to :priced_resource, :class_name => '::Refinery::Resource'
      belongs_to :cover_image, :class_name => '::Refinery::Image'

      validates_presence_of :title, :description, :priced_resource,
        :unpriced_resource, :cover_image, :products_link
      validates_uniqueness_of :title

    end
  end
end
