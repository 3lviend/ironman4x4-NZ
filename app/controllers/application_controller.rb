class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  around_filter :set_time_zone
  before_action :set_date_format

  def set_time_zone(&block)
    time_zone = Refinery::Setting.get(:time_zone)
    Time.use_zone(time_zone, &block)
  end

  def set_date_format
    date_format = Refinery::Setting.get(:date_format)
    Date.format = date_format
  end
end

Refinery::AdminController.class_eval do
  around_filter :set_time_zone
  before_action :set_date_format

  def set_time_zone(&block)
    time_zone = Refinery::Setting.get(:time_zone)
    Time.use_zone(time_zone, &block)
  end

  def set_date_format
    date_format = Refinery::Setting.get(:date_format)
    Date.format = date_format
  end
end
