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

  # Refinery::Page.where(link_url: (url = "/ironman/enquiries")).first_or_create!(
  #   title: 'Enquiries',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)

  # Refinery::Page.where(link_url: (url = "/ironman/warehouses")).first_or_create!(
  #   title: 'Warehouses',
  #   deletable: false,
  #   menu_match: "^#{url}(\/|\/.+?|)$"
  # ) do |page|
  #   Refinery::Pages.default_parts.each_with_index do |part, index|
  #     page.parts.build title: part, body: nil, position: index
  #   end
  # end if defined?(Refinery::Page)

  if defined?(Refinery::Page)
    contact_us_page = Refinery::Page.where(:link_url => '/contact').first

    unless contact_us_page
      contact_us_page = ::Refinery::Page.create({
        :title => "Contact",
        :link_url => "/contact",
        :menu_match => "^/(enquiries|contact).*$",
        :deletable => false
      })
      contact_us_page.parts.create({
        :title => "Body",
        :body => "<p>Get in touch with us. Just use the form below and we'll get back to you as soon as we can.</p>",
        :position => 0
      })
      contact_us_page.parts.create({
        :title => "Side Body",
        :body => "",
        :position => 1
      })
    end

    unless Refinery::Page.where(:link_url => '/contact/thank_you').any?
      thank_you_page = contact_us_page.children.create({
        :title => "Thank You",
        :link_url => "/contact/thank_you",
        :menu_match => "^/(enquiries|contact)/thank_you$",
        :show_in_menu => false,
        :deletable => false
      })
      thank_you_page.parts.create({
        :title => "Body",
        :body => "<p>We've received your enquiry and will get back to you with a response shortly.</p><p><a href='/'>Return to the home page</a></p>",
        :position => 0
      })
    end

    unless Refinery::Page.by_title('Privacy Policy').any?
      privacy_policy_page = contact_us_page.children.create({
        :title => "Privacy Policy",
        :deletable => true,
        :show_in_menu => false
      })
      privacy_policy_page.parts.create({
        :title => "Body",
        :body => "<p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p><p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p><p>Please call us at 123 456 7890 if you have any questions or concerns.</p>",
        :position => 0
      })
    end
  end
end
