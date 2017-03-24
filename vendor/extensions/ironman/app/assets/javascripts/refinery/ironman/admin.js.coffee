#= require refinery/ironman/products
$(document).ready ->
	$(".date-picker").datepicker
		changeMonth: true,
		changeYear: true,
		dateFormat: "mm/dd/yy"

	$('.date-picker-min').datepicker
	  changeMonth: true
	  changeYear: true
	  dateFormat: 'mm/dd/yy'
	
	$('.date-picker-max').datepicker
	  changeMonth: true
	  changeYear: true
	  dateFormat: 'mm/dd/yy'

	$(".date-picker-min").change ->
		console.log($(this).val())
		$('.date-picker-max').datepicker 'option', 'minDate', $(this).val()
		return

	$(".date-picker-max").change ->
		console.log($(this).val())
		$('.date-picker-min').datepicker 'option', 'maxDate', $(this).val()
		return
