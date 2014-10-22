module WarehousesHelper
  def cache_key_for_warehouses
    count          = Refinery::Ironman::Warehouse.count
    max_updated_at = Refinery::Ironman::Warehouse.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "warehouses/all-#{count}-#{max_updated_at}"
  end
end

