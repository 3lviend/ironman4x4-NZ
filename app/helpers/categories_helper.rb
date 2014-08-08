module CategoriesHelper
  def cache_key_for_categories
    count          = Refinery::Ironman::Category.count
    max_updated_at = Refinery::Ironman::Category.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "categories/all-#{count}-#{max_updated_at}"
  end
end
