module Refinery
  module Posts
    class Event < Refinery::Posts::Post
      self.table_name = 'refinery_posts'


      validates :type, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
