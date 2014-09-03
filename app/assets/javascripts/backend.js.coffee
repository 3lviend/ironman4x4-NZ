#= require jquery-ui-timepicker-addon
#= require chosen-jquery
#= require utils
#= require refinery/ironman/admin
#= require refinery/admin/resources

$(document).on 'page:load ready', ->
  options = {
    dateFormat: 'dd/mm/yy'
    timeFormat: 'HH:mm'
  }

  $('input[data-role=datetimepicker]').datetimepicker(options)
  $('input[data-role=datepicker]').datepicker(options)
  $('input[data-role=timepicker]').timepicker(options)

  # enable chosen js
  $('.chosen-select').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
    width: '200px'
