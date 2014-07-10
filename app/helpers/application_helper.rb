module ApplicationHelper
  def d(date, user = nil)
    if not user.present?
      user = current_user
    end

    if date.is_a?(DateTime) or date.is_a?(Time)
      date.in_time_zone(user.time_zone).strftime user.datetime_format
    elsif date.is_a?(Date)
      date.in_time_zone(user.time_zone).strftime user.date_format
    end
  end

  def bootstrap_class_for flash_type
    case flash_type
      when 'success'
        'alert-success'
      when 'error'
        'alert-danger'
      when 'alert'
        'alert-warning'
      when 'notice'
        'alert-info'
      else
        flash_type.to_s
    end
  end
end
