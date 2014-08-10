#Dir[File.join(Rails.root, 'vendor', 'extensions', 'ironman', 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

#load 'vendor/extensions/ironman/db/seeds/01_users.rb'
#load 'vendor/extensions/ironman/db/seeds/02_vehicles.rb'
#load 'vendor/extensions/ironman/db/seeds/03_categories.rb'
#load 'vendor/extensions/ironman/db/seeds/04_accessory_products.rb'
#load 'vendor/extensions/ironman/db/seeds/05_suspension_products.rb'

Refinery::I18n.frontend_locales.each do |lang|
  I18n.locale = lang

  Refinery::User.find_each do |user|
    user.plugins.where(name: 'refinerycms_ironman').first_or_create!(
      position: (user.plugins.maximum(:position) || -1) +1
    )
  end if defined?(Refinery::User)

  # Refinery::Page.where(link_url: (url = "/ironman/products")).first_or_create!(
  #   title: 'Products',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)

  # Refinery::Page.where(link_url: (url = "/ironman/categories")).first_or_create!(
  #   title: 'Categories',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)

  # Refinery::Page.where(link_url: (url = "/ironman/vehicles")).first_or_create!(
  #   title: 'Vehicles',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)

  # Refinery::Page.where(link_url: (url = "/ironman/posts")).first_or_create!(
  #   title: 'Posts',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)

  # Refinery::Page.where(link_url: (url = "/ironman/media_releases")).first_or_create!(
  #   title: 'Media Releases',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)

  # Refinery::Page.where(link_url: (url = "/ironman/stockists")).first_or_create!(
  #   title: 'Stockists',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)
end
