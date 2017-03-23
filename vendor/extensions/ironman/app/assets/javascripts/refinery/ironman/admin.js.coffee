#= require refinery/ironman/products
$(document).ready ->
  $(".date-picker").datepicker(
    changeMonth: true,
    changeYear: true,
    dateFormat: "mm/dd/yy"
    )
