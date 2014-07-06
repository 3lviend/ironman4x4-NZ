module Refinery
  module Products
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Products

      engine_name :refinery_products

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "vehicles"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.products_admin_vehicles_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/products/vehicle',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/products/vehicles(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Vehicles)
      end
    end
  end
end
