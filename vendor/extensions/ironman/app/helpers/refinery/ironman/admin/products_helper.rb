module Refinery
  module Ironman
    module Admin
      module ProductsHelper
        def cache_key_for_categories
          count          = Refinery::Ironman::Category.count
          max_updated_at = Refinery::Ironman::Category.maximum(:updated_at).try(:utc).try(:to_s, :number)
          "categories/all-#{count}-#{max_updated_at}"
        end

        def cache_key_for_vehicles
          count          = Refinery::Ironman::Vehicle.count
          max_updated_at = Refinery::Ironman::Vehicle.maximum(:updated_at).try(:utc).try(:to_s, :number)
          "vehicles/all-#{count}-#{max_updated_at}"
        end
      end
    end
  end
end
