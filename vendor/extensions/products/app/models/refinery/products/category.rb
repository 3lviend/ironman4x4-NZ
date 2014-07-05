module Refinery
  module Products
    class Category < Refinery::Core::BaseModel
      extend FriendlyId

      friendly_id :name, use: :slugged
      acts_as_tree name_column: 'name', order: 'sort_order', touch: true
      acts_as_indexed :fields => [:name, :description]

      has_and_belongs_to_many :products, :join_table => 'refinery_products_categories_products', :dependent => :destroy

      validates :name, :presence => true, :uniqueness => true
      validates_presence_of :name, :visible
      validates_uniqueness_of :name, scope: :parent_id

      after_initialize do
        if self.new_record?
          self.visible = true if self.visible.nil?
        end
      end
    end
  end
end
