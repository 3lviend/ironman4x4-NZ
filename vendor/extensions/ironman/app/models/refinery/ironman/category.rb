module Refinery
  module Ironman
    class Category < Refinery::Core::BaseModel
      extend FriendlyId

      friendly_id :name, use: :slugged
      acts_as_tree name_column: 'name', order: 'refinery_ironman_categories.sort_order', touch: true
      acts_as_indexed :fields => [:name, :description, :short_description]

      has_and_belongs_to_many :products, :join_table => 'refinery_ironman_categories_products', :dependent => :destroy
      belongs_to :thumbnail_image, :class_name => '::Refinery::Image'

      validates_presence_of :name
      validates_uniqueness_of :name, scope: :parent_id

      scope :active, -> { where(visible: true) }
      scope :featured, -> { where(featured: true) }
      scope :has_fitting_instructions, -> { where(has_fitting_instructions: true) }
      scope :homepage_categories, -> { where(show_on_homepage: true) }

      after_initialize do
        if self.new_record?
          self.visible = false if self.visible.nil?
          self.featured = false if self.featured.nil?
          self.show_on_homepage = false if self.show_on_homepage.nil?
          self.show_info = true if self.show_info.nil?
          self.has_fitting_instructions = true if self.has_fitting_instructions.nil?
        end
      end

      def active?
        visible
      end

      def visible?
        visible
      end

      def featured?
        featured
      end

      def show_on_homepage?
        show_on_homepage
      end

      def show_info?
        show_info
      end

      def has_fitting_instructions?
        has_fitting_instructions
      end

      def images_with_captions
        @images_with_captions = image_pages.map do |ref|
          {
            image: Refinery::Image.find(ref.image_id),
            caption: ref.caption || ''
          }
        end
      end
    end
  end
end
