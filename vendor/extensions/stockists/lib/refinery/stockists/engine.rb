module Refinery
  module Stockists
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Stockists

      engine_name :refinery_stockists

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "stockists"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.stockists_admin_stockists_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/stockists/stockist',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Stockists)
      end
    end
  end
end
