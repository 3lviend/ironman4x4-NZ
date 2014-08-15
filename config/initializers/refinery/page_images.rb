Refinery::PageImages.configure do |config|
  config.captions = false
  config.enable_for = [
    {:model=>"Refinery::Page", :tab=>"Refinery::Pages::Tab"},
    {:model=>"Refinery::Ironman::Product", :tab=>"Refinery::Products::Tab"},
    {:model=>"Refinery::Ironman::Category", :tab=>"Refinery::Categories::Tab"}
  ]
  # config.wysiwyg = true
end
