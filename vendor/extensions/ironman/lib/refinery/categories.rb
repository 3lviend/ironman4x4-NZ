require 'refinerycms-core'

module Refinery
  autoload :IronmanGenerator, 'generators/refinery/ironman_generator'

  module Categories
    require 'refinery/categories/engine'

    autoload :Tab, 'refinery/categories/tabs'

    class << self
      attr_writer :root
      attr_writer :tabs

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def tabs
        @tabs ||= []
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
