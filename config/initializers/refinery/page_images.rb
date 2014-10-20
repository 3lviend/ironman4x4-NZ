Refinery::PageImages.configure do |config|
  # NOTE: using caption to store slideshow link URL
  config.captions = true
  config.enable_for = [
    {:model=>"Refinery::Page", :tab=>"Refinery::Pages::Tab"},
    {:model=>"Refinery::Ironman::Product", :tab=>"Refinery::Products::Tab"},
    {:model=>"Refinery::Ironman::Category", :tab=>"Refinery::Categories::Tab"}
  ]
  config.wysiwyg = false
end
