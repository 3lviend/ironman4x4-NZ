module Refinery
  module Ironman
    class CataloguePresenter < Refinery::BasePresenter
      def title
        @model.title
      end

      def browser_title
        title
      end

      def meta_description
        @model.description
      end

      def open_graph_description
        @model.description
      end

      def open_graph_title
        title
      end

      def open_graph_image_url
        @model.cover_image.url if @model.cover_image.present?
      end

      def open_graph_type
        :website
      end

    end
  end
end

