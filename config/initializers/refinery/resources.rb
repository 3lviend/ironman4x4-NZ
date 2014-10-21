# encoding: utf-8
Refinery::Resources.configure do |config|
  # Configures the maximum allowed upload size (in bytes) for a file upload
  # config.max_file_size = 52428800

  # Configure how many resources per page should be displayed when a dialog is presented that contains resources
  config.pages_per_dialog = 120

  # Configure how many resources per page should be displayed in the list of resources in the admin area
  # config.pages_per_admin_index = 20

  # Configure S3 (you can also use ENV for this)
  # The s3_backend setting by default defers to the core setting for this but can be set just for resources.
  # config.s3_backend = Refinery::Core.s3_backend
  # config.s3_bucket_name = ENV['S3_BUCKET']
  # config.s3_access_key_id = ENV['S3_KEY']
  # config.s3_secret_access_key = ENV['S3_SECRET']
  # config.s3_region = ENV['S3_REGION']

  # Configure Dragonfly
  # This is where in the middleware stack to insert the Dragonfly middleware
  # config.dragonfly_insert_before = "ActionDispatch::Callbacks"
  # config.dragonfly_secret = "ac5a0ef6fb99cc3056beec423f8fd6091487ba79a6e5a871"
  # config.dragonfly_url_format = "/system/resources/:job/:basename.:ext"
  # config.dragonfly_url_host = ""
  # config.datastore_root_path = "/Users/asgeo1/Projects/1bdesign/ironman4x4/public/system/refinery/resources"
  # config.content_disposition = :attachment

  # Configure Dragonfly custom storage backend
  # The custom_backend setting by default defers to the core setting for this but can be set just for resources.
  # config.custom_backend_class = nil
  # config.custom_backend_opts = {}

end
