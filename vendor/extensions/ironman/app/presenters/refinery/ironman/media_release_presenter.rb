module Refinery
  module Ironman
    class MediaReleasePresenter < Refinery::BasePresenter
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
        @model.thumbnail_image.url if @model.thumbnail_image.present?
      end

      def open_graph_type
        :article
      end

    end
  end
end

