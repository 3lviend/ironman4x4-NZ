module Refinery
  module Ironman
    class Vehicle < Refinery::Core::BaseModel
      acts_as_tree name_column: 'name', order: 'refinery_ironman_vehicles.sort_order', touch: true

      has_and_belongs_to_many :products, :join_table => 'refinery_ironman_vehicles_products'

      validates_presence_of :name
      validates_uniqueness_of :name, scope: :parent_id

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      scope :active, -> { where(visible: true) }

      MANDATORY_0MM = ['U-Bolts', 'Spring Bush Kits', 'Camber Correction' ]
      MANDATORY_50MM = MANDATORY_0MM + ['Centre Bearing Spacer Kits' ]
      MANDATORY_100MM = ['Caster Correction', 'Adjustable Trailing Arms', 'Extended Brake Hose', 'Adjustable Drag Links', 'Adjustable Panhard Rods', 'Sway Bar Links', 'Camber Correction', 'Spring Bush Kits']

      OPTIONAL_0MM = ['ABS Wire & Axle Protection', 'Adjustable Drag Links', 'Adjustable Panhard Rods', 'Adjustable Trailing Arms', 'Bracket', 'Bracket Kit', 'Brake Line Spacers', 'Centre Bearing Spacer Kit', 'Diff Breathers', 'Driveline Spacers', 'Extended Brake Hose', 'Load Plus', 'Shackles & Pins', 'Steering Dampers', 'Suspension Arm Bush Kits', 'Sway Bar Links', 'Trim Packers']
      OPTIONAL_50MM = OPTIONAL_0MM
      OPTIONAL_100MM = ['Trim Packers', 'Bracket', 'Bracket Kit', 'Brake Line Spacers', 'Diff Breathers', 'Driveline Spacers', 'Shackles & Pins', 'Steering Dampers', 'Suspension Arm Bush Kits']

      after_initialize do
        if self.new_record?
          self.visible = false if self.visible.nil?
        end
      end

      after_update do
        if name_changed?
          leaves.each { |v|
            v.calc_name_full
            v.products.each(&:touch)
          }
        end
      end

      def visible?
        visible
      end

      def calc_name_full
        update_attribute(:name_full, self_and_ancestors.reverse.map {|v| v.name}.join(' '))
      end

    end
  end
end
