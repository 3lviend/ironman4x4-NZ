module ApplicationHelper
  def d(date)
    time_zone = Refinery::Setting.get(:time_zone)
    datetime_format = Refinery::Setting.get(:datetime_format)
    date_format = Refinery::Setting.get(:date_format)

    if date.is_a?(DateTime) or date.is_a?(Time)
      date.in_time_zone(time_zone).strftime datetime_format
    elsif date.is_a?(Date)
      date.in_time_zone(time_zone).strftime date_format
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

  def phone_number_link(text, options)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}", options
  end
end
