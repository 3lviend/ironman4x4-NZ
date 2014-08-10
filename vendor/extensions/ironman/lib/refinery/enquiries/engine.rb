module Refinery
  module Ironman
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Ironman

      engine_name :refinery_ironman

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ironman_enquiries"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ironman_admin_enquiries_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ironman/enquiry',
            :title => 'name',
            :url_prefix => nil,
            :url => 'refinery.ironman_admin_enquiries_path'
          }
          plugin.menu_match = %r{refinery/ironman/(enquiries|settings)(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Enquiries)
      end
    end
  end
end
