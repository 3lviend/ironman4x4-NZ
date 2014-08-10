module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ironman_posts"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_posts_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/post'
          }
          plugin.menu_match = %r{refinery/ironman/(posts|blog_posts|events|news_items)(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Posts)
      end
    end
  end
end
