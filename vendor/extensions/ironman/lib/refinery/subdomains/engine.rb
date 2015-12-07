module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "subdomains"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_subdomains_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/subdomain',
            :title => 'db_name'
          }
          plugin.menu_match = %r{refinery/ironman/subdomains(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Subdomains)
      end
    end
  end
end
