module Refinery
  module Ironman
    class PostPresenter < Refinery::BasePresenter
      def title
        @model.title
      end

      def browser_title
        title
      end

      def meta_description
        @model.teaser
      end

      def open_graph_description
        @model.teaser
      end

      def open_graph_title
        title
      end

      def open_graph_image_url
        @model.index_image.url if @model.index_image.present?
      end

      def open_graph_type
        :article
      end

    end
  end
end

