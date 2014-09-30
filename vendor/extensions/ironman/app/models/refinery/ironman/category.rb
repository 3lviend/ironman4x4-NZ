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

      after_initialize do
        if self.new_record?
          self.visible = true if self.visible.nil?
          self.featured = false if self.featured.nil?
        end
      end
    end
  end
end
