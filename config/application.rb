require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ironman4x4
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.to_prepare do
      Refinery.searchable_models = [
        Refinery::Page,
        Refinery::Ironman::Product.active,
        Refinery::Ironman::Category.active,
        Refinery::Ironman::MediaRelease.active,
        Refinery::Ironman::BlogPost.active,
        Refinery::Ironman::Event.active,
        Refinery::Ironman::NewsItem.active
      ]

      # default setting - this will actually be ignored by our custom search
      # model, which will return unlimited results
      Refinery::SearchEngine::RESULTS_LIMIT = 100

      # TODO: remove this - temp workaround to have 404s redirect to the homepage
      Refinery::ApplicationController.class_eval do
        def error_404(exception=nil)
          redirect_to refinery.root_path, status:302
          return false
        end
      end

      Refinery::Pages::InstanceMethods.class_eval do
        def error_404(exception=nil)
          redirect_to refinery.root_path, status:302
          return false
        end
      end

    end
  end
end
