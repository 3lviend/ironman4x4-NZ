module Refinery
  class SearchController < ::ApplicationController

  	# Display search results given the query supplied
    def show
      @filters = {
        category: true,
        products: true,
        media: true,
        news: true,
        events: true,
        blog: true
      }

      if cookies[:search_filters].present?
        @filters.merge!(JSON.parse(cookies[:search_filters]).symbolize_keys)
      end

      Refinery.searchable_models = [
        Refinery::Page,
      ]

      Refinery.searchable_models << Refinery::Ironman::Product.active if @filters[:products]
      Refinery.searchable_models << Refinery::Ironman::Category.active if @filters[:category]
      Refinery.searchable_models << Refinery::Ironman::MediaRelease.active if @filters[:media]
      Refinery.searchable_models << Refinery::Ironman::BlogPost.active if @filters[:blog]
      Refinery.searchable_models << Refinery::Ironman::Event.active if @filters[:events]
      Refinery.searchable_models << Refinery::Ironman::NewsItem.active if @filters[:news]

      @results = Refinery::SearchEngine.search(params[:query], params[:page])

      present(@page = Refinery::Page.find_by_link_url("/search"))
    end

  end
end
