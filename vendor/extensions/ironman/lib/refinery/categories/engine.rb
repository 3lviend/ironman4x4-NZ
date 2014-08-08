module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "categories"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_categories_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/category',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/ironman/categories(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Categories)
      end
    end
  end
end
