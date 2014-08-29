module Refinery
  module Ironman
    class Post < Refinery::Core::BaseModel
      extend Forwardable
      extend FriendlyId

      #TODO: find out why history isn't working with friendly_id and refinery
      #friendly_id :name, use: [:slugged, :history]
      friendly_id :title, use: :slugged
      acts_as_indexed :fields => [:title]

      self.table_name = 'refinery_ironman_posts'

      validates :title, :presence => true, :uniqueness => true
      validates_presence_of :type, :teaser, :body, :user_id, :index_image_id, :published_at

      belongs_to :author, proc { readonly(true) }, :class_name => Refinery::User.to_s, :foreign_key => :user_id

      scope :active, -> { where(draft: false).where('expire_at is null or expire_at > ?', Time.zone.now) }

      # Add an association to the Refinery::Image class, so we
      # can take advantage of the magic that the class provides
      belongs_to :index_image, :class_name => '::Refinery::Image'
      belongs_to :hero_image, :class_name => '::Refinery::Image'

      after_initialize do
        if self.new_record?
          self.published_at = Time.zone.now if self.published_at.nil?
        end
      end

      # Use in subclasses like:
      # delegate_details :win_ratio, :tanning_time, to: :wrestling_details
      def self.delegate_details(*attributes)
        options = attributes.extract_options!
        association_name = options.fetch(:to) {
          raise ArgumentError.new "You must specify the name of the details association"
        }

        define_method association_name do
          super() || send("build_#{association_name}")
        end

        attributes.each do |attribute_name|
          # Getter, setter, and boolean getter (in case it's a boolean attribute)
          def_delegators association_name,
            :"#{attribute_name}", :"#{attribute_name}=", :"#{attribute_name}?"
        end
      end
    end
  end
end
