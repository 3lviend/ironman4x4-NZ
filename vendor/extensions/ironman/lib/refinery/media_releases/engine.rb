module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ironman_media_releases"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_media_releases_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/media_release'
          }
          plugin.menu_match = %r{refinery/ironman/media_releases(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::MediaReleases)
      end
    end
  end
end
