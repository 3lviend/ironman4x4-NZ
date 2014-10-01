# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#load 'db/seeds/01_users.rb'
#load 'db/seeds/a_vehicles.rb'
#load 'db/seeds/b_categories.rb'
#load 'db/seeds/c_accessory_products.rb'
#load 'db/seeds/d_suspension_products.rb'
load 'db/seeds/d_suspension_products2.rb'

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Ironman extension
Refinery::Ironman::Engine.load_seed

# Added by Refinery CMS Search engine
Refinery::Search::Engine.load_seed

Refinery::Setting.set(:time_zone, 'Melbourne')
Refinery::Setting.set(:datetime_format, '%d/%m/%Y %H:%M')
Refinery::Setting.set(:date_format, '%d/%m/%Y')


# if defined?(Refinery::Page)
#   about_us_page = Refinery::Page.where(:link_url => '/about').first
# 
#   unless about_us_page
#     about_us_page = ::Refinery::Page.create({
#       :title => "About",
#       :link_url => "/about",
#       :deletable => false
#     })
#     about_us_page.parts.create({
#       :title => "Body",
#       :body => "<p>Epta dio. Dolessinus unt mosam quae volut et aceprae pererro magnam et repelit aquiand endissimus.</p>",
#       :position => 0
#     })
#     about_us_page.parts.create({
#       :title => "Side Body",
#       :body => "",
#       :position => 1
#     })
#   end
# end

if defined?(Refinery::Page)
  tech_support_page = Refinery::Page.where(:slug => 'technical-support').first

  unless tech_support_page
    tech_support_page = ::Refinery::Page.create({
      :title => "Technical Support",
      :deletable => false
    })
    tech_support_page.parts.create({
      :title => "Body",
      :body => "<p>Epta dio. Dolessinus unt mosam quae volut et aceprae pererro magnam et repelit aquiand endissimus.</p>",
      :position => 0
    })
    tech_support_page.parts.create({
      :title => "Side Body",
      :body => "",
      :position => 1
    })
  end


  faq_page = Refinery::Page.where(:slug => 'frequently-asked-questions').first

  unless faq_page
    faq_page = ::Refinery::Page.create({
      :title => "Frequently Asked Questions",
      :deletable => false
    })
    faq_page.parts.create({
      :title => "Body",
      :body => "<p>Epta dio. Dolessinus unt mosam quae volut et aceprae pererro magnam et repelit aquiand endissimus.</p>",
      :position => 0
    })
    faq_page.parts.create({
      :title => "Side Body",
      :body => "",
      :position => 1
    })
  end


  warranty_page = Refinery::Page.where(:slug => 'warranty-terms').first

  unless warranty_page
    warranty_page = ::Refinery::Page.create({
      :title => "Warranty Terms",
      :deletable => false
    })
    warranty_page.parts.create({
      :title => "Body",
      :body => "<p>Epta dio. Dolessinus unt mosam quae volut et aceprae pererro magnam et repelit aquiand endissimus.</p>",
      :position => 0
    })
    warranty_page.parts.create({
      :title => "Side Body",
      :body => "",
      :position => 1
    })
  end



  claims_page = Refinery::Page.where(:slug => 'claims-procedure').first

  unless claims_page
    claims_page = ::Refinery::Page.create({
      :title => "Claims Procedure",
      :deletable => false
    })
    claims_page.parts.create({
      :title => "Body",
      :body => "<p>Epta dio. Dolessinus unt mosam quae volut et aceprae pererro magnam et repelit aquiand endissimus.</p>",
      :position => 0
    })
    claims_page.parts.create({
      :title => "Side Body",
      :body => "",
      :position => 1
    })
  end



  terms_page = Refinery::Page.where(:slug => 'terms-conditions').first

  unless terms_page
    terms_page = ::Refinery::Page.create({
      :title => "Terms & Conditions",
      :deletable => false
    })
    terms_page.parts.create({
      :title => "Body",
      :body => "<p>Epta dio. Dolessinus unt mosam quae volut et aceprae pererro magnam et repelit aquiand endissimus.</p>",
      :position => 0
    })
    terms_page.parts.create({
      :title => "Side Body",
      :body => "",
      :position => 1
    })
  end

end
