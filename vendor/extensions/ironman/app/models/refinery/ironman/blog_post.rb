module Refinery
  module Ironman
    class BlogPost < Refinery::Ironman::Post
      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
    end
  end
end
