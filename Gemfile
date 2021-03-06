source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.1.0'
gem 'actionpack', :github => 'asgeo1/actionpack'
gem 'rack-cors', :require => 'rack/cors'
#gem 'pg'
gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# gem 'jquery-turbolinks' #not working :(

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'jquery-ui-rails'
gem 'jquery-timepicker-addon-rails'
gem 'date_parity'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'exception_notification'

# Refinery CMS
gem 'refinerycms', :github => 'asgeo1/refinerycms', :branch => 'myfork', :ref => '4549606' #:github => 'refinery/refinerycms'
gem 'refinerycms-i18n', :github => 'refinery/refinerycms-i18n'

# Optionally, specify additional Refinery CMS Extensions here:
gem 'refinerycms-acts-as-indexed', github: 'refinery/refinerycms-acts-as-indexed'
gem 'refinerycms-wymeditor', github: 'asgeo1/refinerycms-wymeditor', :branch => 'fix_image_dialog_params'
# gem 'refinerycms-blog', '~> 2.1.0'
# gem 'refinerycms-inquiries', '~> 2.1.0'
gem 'refinerycms-search', :github => 'wantedtech/refinerycms-search'
gem 'refinerycms-settings', :github => 'refinery/refinerycms-settings'
gem 'refinerycms-page-images', :github => 'asgeo1/refinerycms-page-images', :branch => 'rails-4-strong-parameters2', :ref => 'b1d3b7e'
gem 'refinerycms-page-resources', :github => 'asgeo1/refinerycms-page-resources', :branch => 'page-resources'

gem 'refinerycms-ironman', path: 'vendor/extensions'

# amazon s3 uploads
# gem 'fog', group: [:production, :staging]

# enables serving assets in production and setting your logger to standard out
gem 'rails_12factor', group: [:production, :staging]
gem 'dotenv-rails' #loads .env files into ENV
gem 'dotenv-deployment' #allows environment-specific .env files, e.g. .env.production
gem 'closure_tree'
gem 'gretel', github: 'asgeo1/gretel', branch:'make_breadcrumb_key_public'
gem 'geocoder'
gem 'gibbon'

gem 'modernizr-rails'
gem 'bootstrap-sass'
gem 'chosen-rails'
gem 'gmaps4rails'
gem 'underscore-rails'
gem 'jquery-fileupload-rails'
gem 'jquery-cookie-rails'
gem 'jquery-hoverIntent-rails'
gem 'jquery-easing-rails'

gem 'eventmachine', '~> 1.0.4'

# deployment
gem 'mina'
gem 'mina-multistage', require: false

# delayed jobs
gem 'sidekiq', '~> 2.17.8'

gem "binding_of_caller"

gem 'write_xlsx'

# Development gems
group :development do
	#gem 'rack-mini-profiler'
	gem 'mailcatcher'
	gem 'letter_opener_web'
	gem 'byebug'
end
