module StockistsHelper
  def cache_key_for_stockists
    count          = Refinery::Ironman::Stockist.count
    max_updated_at = Refinery::Ironman::Stockist.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "stockists/all-#{count}-#{max_updated_at}"
  end
end

