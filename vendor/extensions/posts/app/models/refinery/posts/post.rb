module Refinery
  module Posts
    class Post < Refinery::Core::BaseModel
      self.table_name = 'refinery_posts'


      validates :type, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]


      # Add an association to the Refinery::Image class, so we
      # can take advantage of the magic that the class provides
      belongs_to :index_image, :class_name => '::Refinery::Image'
      belongs_to :hero_image, :class_name => '::Refinery::Image'

    end
  end
end
