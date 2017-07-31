class ApplicationController < ActionController::Base
  include DatabaseManager

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  around_filter :set_time_zone
  before_action :set_date_format
  before_action :set_current_database

  def set_time_zone(&block)
    # time_zone = Refinery::Setting.get(:time_zone)
    default_timezone = "Pacific/Auckland"
    time_zone = Refinery::Setting.find_or_set(:time_zone, default_timezone)
    Time.use_zone(time_zone, &block) rescue Time.use_zone(default_timezone, &block)
  end

  def set_date_format
    date_format = Refinery::Setting.get(:date_format)
    Date.format = date_format
  end

  #
  # set connection to database for current subdomain
  #
  def set_current_database
    connect(request.host.split('.')[-3])
  end

end

Refinery::AdminController.class_eval do
  include DatabaseManager

  around_filter :set_time_zone
  before_action :set_date_format
  before_action :set_current_database

  def set_time_zone(&block)
    # time_zone = Refinery::Setting.get(:time_zone)
    default_timezone = "Pacific/Auckland"
    time_zone = Refinery::Setting.find_or_set(:time_zone, default_timezone)
    Time.use_zone(time_zone, &block) rescue Time.use_zone(default_timezone, &block)
  end

  def set_date_format
    date_format = Refinery::Setting.get(:date_format)
    Date.format = date_format if date_format.present?
  end

  #
  # set connection to database for current subdomain
  #
  def set_current_database
    connect(request.host.split('.')[-3])
  end

end

# only needed for direct to S3 uploads
#
# Refinery::Admin::ResourcesController.class_eval do
#   # Your new methods here
#   def create
#     @resource = Refinery::Resource.create(resource_params)
#
#     unless params[:insert]
#       if @resource.valid?
#         flash.notice = t('created', :scope => 'refinery.crudify', :what => @resource.title)
#         if from_dialog?
#           @dialog_successful = true
#           render :template => "/refinery/admin/dialog_success", :layout => true
#         else
#           redirect_to refinery.admin_resources_path
#         end
#       else
#         self.new # important for dialogs
#         render :action => 'new'
#       end
#     else
#       if @resource.valid?
#         @resource_id = @resource.id
#         @resource = nil
#
#         self.insert
#       end
#     end
#   end
#
#   def resource_params
#     params.require(:resource).permit(:file, :file_type, :file_uid, :file_name, :file_size)
#   end
# end

class Hash
  def flatten_nested; flat_map{|k, v| [k, *v.flatten_nested]} end
end
