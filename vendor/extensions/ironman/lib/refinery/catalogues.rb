require 'refinerycms-core'

module Refinery
  autoload :IronmanGenerator, 'generators/refinery/ironman_generator'

  module Catalogues
    require 'refinery/catalogues/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
