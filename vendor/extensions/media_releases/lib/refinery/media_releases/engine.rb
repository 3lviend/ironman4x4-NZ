module Refinery
  module MediaReleases
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::MediaReleases

      engine_name :refinery_media_releases

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "media_releases"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.media_releases_admin_media_releases_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/media_releases/media_release'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::MediaReleases)
      end
    end
  end
end
