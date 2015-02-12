module Refinery
  class SearchEngine

    # Perform search over the specified models
    def self.search(query, page = 1)
      results = []

      Refinery.searchable_models.each do |model|
        results << model.with_query(query)
      end if query.present?

      results.flatten
    end

  end
end
