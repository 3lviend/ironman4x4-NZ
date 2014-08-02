module Refinery
  module Posts
    class Post < Refinery::Core::BaseModel
      extend FriendlyId

      #TODO: find out why history isn't working with friendly_id and refinery
      #friendly_id :name, use: [:slugged, :history]
      friendly_id :title, use: :slugged
      acts_as_indexed :fields => [:title]

      self.table_name = 'refinery_posts'

      validates :title, :presence => true, :uniqueness => true
      validates_presence_of :type, :teaser, :body, :user_id, :index_image_id, :published_at

      belongs_to :author, proc { readonly(true) }, :class_name => Refinery::User.to_s, :foreign_key => :user_id

      # Add an association to the Refinery::Image class, so we
      # can take advantage of the magic that the class provides
      belongs_to :index_image, :class_name => '::Refinery::Image'
      belongs_to :hero_image, :class_name => '::Refinery::Image'

    end
  end
end
