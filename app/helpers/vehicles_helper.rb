module VehiclesHelper
  def cache_key_for_vehicles
    count          = Refinery::Ironman::Vehicle.count
    max_updated_at = Refinery::Ironman::Vehicle.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "vehicles/all-#{count}-#{max_updated_at}"
  end
end

