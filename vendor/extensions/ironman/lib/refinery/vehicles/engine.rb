module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "vehicles"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_vehicles_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/vehicle',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/ironman/vehicles(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Vehicles)
      end
    end
  end
end
