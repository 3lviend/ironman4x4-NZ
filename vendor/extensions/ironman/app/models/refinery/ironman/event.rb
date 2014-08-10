module Refinery
  module Ironman
    class Event < Refinery::Ironman::Post
      has_one :details, class_name: 'Refinery::Ironman::EventDetail', foreign_key: 'post_id', :dependent => :destroy
      delegate_details :start, :end, :location, :latitude, :longitude, :to => :details

      default_scope -> { includes(:details).references(:details) }

      validates_presence_of :start
      validates_presence_of :end

      validates_presence_of :latitude, :if => :longitude
      validates_presence_of :longitude, :if => :latitude
      validates_presence_of :location, :if => :latitude

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
    end
  end
end
