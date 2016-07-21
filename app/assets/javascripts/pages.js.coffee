$(document).ready ->
  $('#caret').click ->
    $('#hid').slideToggle 'slow'
  $('#caret1').click ->
    $('#hid2').slideToggle 'slow'
  $('#caret2').click ->
    $('#hid3').slideToggle 'slow'
  $('#caret3').click ->
    $('#hid4').slideToggle 'slow'
  $('#caret4').click ->
    $('#hid5').slideToggle 'slow'
  $('#caret5').click ->
    $('#hid6').slideToggle 'slow'
  $('#caret6').click ->
    $('#hid7').slideToggle 'slow'
  $('#caret7').click ->
    $('#hid8').slideToggle 'slow'
    false
  return

$ ->
  $('#first_row select:not(#second_row)').change(->
    str = ''
    $('#first_row select option:selected').each ->
      str += $(this).text() + ' '
      return
    $('#vehicle_selected').text str
    return
  ).change()

###  
$ ->
  topPos = $('.fix').scrollTop() + 550
  #topPos 
  $(window).scroll ->
    top = $(document).scrollTop()
    if top > topPos
      $('.fix').addClass 'fixed'
    else
      $('.fix').removeClass 'fixed'
    return
  return
###

do ->
  votes = document.getElementsByTagName('input')
  recalc = ->
    sum = 0
    i = 0
    while i < votes.length
      sum += if votes[i].checked then +votes[i].getAttribute('data-price') else 0
      i++
    document.getElementById('rezultat').innerHTML = '' + sum
    return
  i = 0
  while i < votes.length
    votes[i].onchange = recalc
    i++
return
return
do ->
  votes = document.getElementsByTagName('input')
  recalc = ->
    sum = 0
    i = 0
    while i < votes.length
      sum += if votes[i].checked then +votes[i].getAttribute('data-price') else 0
      i++
    document.getElementById('rezultat2').innerHTML = '' + sum
    return
  i = 0
  while i < votes.length
    votes[i].onchange = recalc
    i++
return
return