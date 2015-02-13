module Refinery
  module Ironman
    class CategoryPresenter < Refinery::BasePresenter
      def title
        @model.name
      end

      def browser_title
        title
      end

      def meta_description
        if not @model.meta_description.blank?
          @model.meta_description
        else
          @model.short_description
        end
      end

      def open_graph_description
        @model.short_description
      end

      def open_graph_title
        title
      end

      def open_graph_image_url
        @model.thumbnail_image.url if @model.thumbnail_image.present?
      end

      def open_graph_type
        :website
      end
    end
  end
end
