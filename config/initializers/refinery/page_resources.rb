Refinery::PageResources.configure do |config|
  # config.captions = false
  config.enable_for = [
    #{:model=>"Refinery::Page", :tab=>"Refinery::Pages::Tab"},
    {:model=>"Refinery::Ironman::Product", :tab=>"Refinery::Products::Tab"}
  ]
  # config.wysiwyg = true
end
