module ProductsHelper
  def cache_key_for_products
    count          = Refinery::Ironman::Product.count
    max_updated_at = Refinery::Ironman::Product.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "products/all-#{count}-#{max_updated_at}"
  end
end
