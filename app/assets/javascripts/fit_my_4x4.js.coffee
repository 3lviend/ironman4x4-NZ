$(document).on 'page:load ready', ->
  $('#fit-my-4x4, #layout-fit-my-4x4').on 'submit', (event) ->
    event.preventDefault()

    data = {
      vehicle_make_id: Number $('#vehicle_1st_id').val()
      vehicle_model_id: Number $('#vehicle_2nd_id').val()
      vehicle_series_id: Number $('#vehicle_3rd_id').val()
    }

    $.cookie 'fit_my_4x4', JSON.stringify(data), {expires:7, path: '/'}
