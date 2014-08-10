require 'refinerycms-core'
require 'refinerycms-settings'

module Refinery
  autoload :IronmanGenerator, 'generators/refinery/ironman_generator'

  module Enquiries
    require 'refinery/enquiries/engine'
    require 'refinery/enquiries/configuration'

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
