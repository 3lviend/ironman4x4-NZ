module Refinery
  module Posts
    class Event < Refinery::Posts::Post
      self.table_name = 'refinery_posts'

      validates :title, :presence => true, :uniqueness => true
      has_one :details, class_name: 'Refinery::Posts::EventDetail', foreign_key: 'post_id', :dependent => :destroy
      delegate_details :start, :end, :location, :latitude, :longitude, :position, :to => :details

      default_scope -> { includes(:details).references(:details) }

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
    end
  end
end
