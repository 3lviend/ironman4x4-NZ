module Refinery
  class BasePresenter

    DEFAULT_FIELDS = {
      :title              => proc { |p| (p.model.class.name.titleize if p.model.present?) },
      :path               => proc { |p| p.title },
      :browser_title      => nil,
      :meta_description   => nil
    }

    attr_reader :model

    def initialize(obj)
      @model = obj
    end

    def method_missing(method, *args)
      if @model.respond_to? method
        @model.send method
      elsif DEFAULT_FIELDS.has_key? method
        (value = DEFAULT_FIELDS[method]).is_a?(Proc) ? value.call(self) : value
      else
        raise NoMethodError.new("#{self.class.name} doesn't know #{method}. Define or delegate it.", method)
      end
    end

    def respond_to?(method)
      super || @model.respond_to?(method) || DEFAULT_FIELDS.has_key?(method)
    end

    def open_graph_title
      title
    end

    def open_graph_description
      meta_description
    end

    def open_graph_type
      :website
    end

    def open_graph_image_url
      'nav_logo'
    end
  end
end
