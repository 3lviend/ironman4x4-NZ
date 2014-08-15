module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ironman_products"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_products_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/product',
            :title => 'product_no'
          }
          plugin.menu_match = %r{refinery/ironman/(products|categories)(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Products)
      end
    end
  end
end
