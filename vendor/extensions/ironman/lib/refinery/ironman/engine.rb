module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ironman"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_ironman_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/ironman'
          }
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Ironman)
      end
    end
  end
end
