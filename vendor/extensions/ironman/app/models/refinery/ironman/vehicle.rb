module Refinery
  module Ironman
    class Vehicle < Refinery::Core::BaseModel
      acts_as_tree name_column: 'name', order: 'sort_order', touch: true

      validates_presence_of :name, :visible
      validates_uniqueness_of :name, scope: :parent_id

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      after_initialize do
        if self.new_record?
          self.visible = true if self.visible.nil?
        end
      end
    end
  end
end
