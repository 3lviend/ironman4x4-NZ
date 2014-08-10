module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ironman_orders"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_orders_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/order',
            :title => 'order_no'
          }
          plugin.menu_match = %r{refinery/ironman/orders(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Orders)
      end
    end
  end
end
