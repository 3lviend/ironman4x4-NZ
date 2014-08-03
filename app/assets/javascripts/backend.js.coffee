#= require jquery-ui-timepicker-addon

$(document).on 'page:load ready', ->
  options = {
    dateFormat: 'dd/mm/yy'
    timeFormat: 'HH:mm'
  }

  $('input[data-role=datetimepicker]').datetimepicker(options)
  $('input[data-role=datepicker]').datepicker(options)
  $('input[data-role=timepicker]').timepicker(options)
