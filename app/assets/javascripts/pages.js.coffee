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
$('select').change(->
  str = ''
  $('select option:selected').each ->
    str += $(this).text() + ' '
    return
  $('.veh').text str
  return
).change()



$ ->
  $('#bullbar_steel').click ->
    checkedcheckbox = $('[name="bullbar"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.bl1').html '' + checkedcheckbox
    else
      $('.bl1').html ' '
    return
  $('#bullbar_alloy').click ->
    checkedcheckbox = $('[name="bullbar1"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.bl2').html '' + checkedcheckbox
    else
      $('.bl2').html ' '
    return
  $('#bullbar_rope').click ->
    checkedcheckbox = $('[name="bullbar2"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.bl3').html '' + checkedcheckbox
    else
      $('.bl3').html ' '
    return
  $('#bullbar_cable').click ->
    checkedcheckbox = $('[name="bullbar3"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.bl4').html '' + checkedcheckbox
    else
      $('.bl4').html ' '
    return
  $('#bullbar_batteries').click ->
    checkedcheckbox = $('[name="bullbar4"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.bl5').html '' + checkedcheckbox
    else
      $('.bl5').html ' '
    return
  $('#bullbar_other').click ->
    checkedcheckbox = $('[name="bullbar5"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.bl6').html '' + checkedcheckbox
    else
      $('.bl6').html ' '
    return      
  $('#drawer').click ->
    checkedcheckbox = $('[name="tray"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr1').html '' + checkedcheckbox
    else
      $('.tr1').html ' '
    return 
  $('#long').click ->
    checkedcheckbox = $('[name="tray1"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr2').html '' + checkedcheckbox
    else
      $('.tr2').html ' '
    return 
  $('#bar').click ->
    checkedcheckbox = $('[name="tray2"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr3').html '' + checkedcheckbox
    else
      $('.tr3').html ' '
    return 
  $('#carrier').click ->
    checkedcheckbox = $('[name="tray3"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr4').html '' + checkedcheckbox
    else
      $('.tr4').html ' '
    return 
  $('#dual_carrier').click ->
    checkedcheckbox = $('[name="tray4"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr5').html '' + checkedcheckbox
    else
      $('.tr5').html ' '
    return 
  $('#steel_roof').click ->
    checkedcheckbox = $('[name="tray5"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr6').html '' + checkedcheckbox
    else
      $('.tr6').html ' '
    return 
  $('#alloy_roof').click ->
    checkedcheckbox = $('[name="tray6"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr7').html '' + checkedcheckbox
    else
      $('.tr7').html ' '
    return 
  $('#battery').click ->
    checkedcheckbox = $('[name="tray7"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr8').html '' + checkedcheckbox
    else
      $('.tr8').html ' '
    return 
  $('#fridge').click ->
    checkedcheckbox = $('[name="tray8"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr9').html '' + checkedcheckbox
    else
      $('.tr9').html ' '
    return 
  $('#tent').click ->
    checkedcheckbox = $('[name="tray9"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr10').html '' + checkedcheckbox
    else
      $('.tr10').html ' '
    return 
  $('#laggage').click ->
    checkedcheckbox = $('[name="tray10"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr11').html '' + checkedcheckbox
    else
      $('.tr11').html ' '
    return 
  $('#tank').click ->
    checkedcheckbox = $('[name="tray11"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr12').html '' + checkedcheckbox
    else
      $('.tr12').html ' '
    return 
  $('#other').click ->
    checkedcheckbox = $('[name="tray12"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr13').html '' + checkedcheckbox
    else
      $('.tr13').html ' '
    return 
  $('#canopy').click ->
    checkedcheckbox = $('[name="tray13"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr14').html '' + checkedcheckbox
    else
      $('.tr14').html ' '
    return 
  $('#steel_canopy').click ->
    checkedcheckbox = $('[name="tray14"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr15').html '' + checkedcheckbox
    else
      $('.tr15').html ' '
    return
  $('#steel_tray').click ->
    checkedcheckbox = $('[name="tray15"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr16').html '' + checkedcheckbox
    else
      $('.tr16').html ' '
    return
  $('#range_rank').click ->
    checkedcheckbox = $('[name="tray16"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr17').html '' + checkedcheckbox
    else
      $('.tr17').html ' '
    return
  $('#steel_roof_rack').click ->
    checkedcheckbox = $('[name="tray17"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr18').html '' + checkedcheckbox
    else
      $('.tr18').html ' '
    return
  $('#alloy_roof_rack').click ->
    checkedcheckbox = $('[name="tray18"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr19').html '' + checkedcheckbox
    else
      $('.tr19').html ' '
    return
  $('#roof_top_tent').click ->
    checkedcheckbox = $('[name="tray19"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr20').html '' + checkedcheckbox
    else
      $('.tr20').html ' '
    return
  $('#drawer_system').click ->
    checkedcheckbox = $('[name="tray20"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr21').html '' + checkedcheckbox
    else
      $('.tr21').html ' '
    return
  $('#battery_in_rear').click ->
    checkedcheckbox = $('[name="tray21"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr22').html '' + checkedcheckbox
    else
      $('.tr22').html ' '
    return
  $('#luggage_raer').click ->
    checkedcheckbox = $('[name="tray22"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr23').html '' + checkedcheckbox
    else
      $('.tr23').html ' '
    return
  $('#tank_rear').click ->
    checkedcheckbox = $('[name="tray23"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr24').html '' + checkedcheckbox
    else
      $('.tr24').html ' '
    return
  $('#other_rear').click ->
    checkedcheckbox = $('[name="tray24"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.tr25').html '' + checkedcheckbox
    else
      $('.tr25').html ' '
    return
  $('#nitro_gas').click ->
    checkedcheckbox = $('[name="nitro_gas"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.fs1').html '' + checkedcheckbox
    else
      $('.fs1').html ' '
    return
  $('#foam_cell').click ->
    checkedcheckbox = $('[name="nitro_gas1"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.fs2').html '' + checkedcheckbox
    else
      $('.fs2').html ' '
    return
  $('#foam_cell_pro').click ->
    checkedcheckbox = $('[name="nitro_gas2"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.fs3').html '' + checkedcheckbox
    else
      $('.fs3').html ' '
    return
  $('#nitro_gas_rear').click ->
    checkedcheckbox = $('[name="nitro_gas_rear"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.rs1').html '' + checkedcheckbox
    else
      $('.rs1').html ' '
    return
  $('#foam_cell_rear').click ->
    checkedcheckbox = $('[name="nitro_gas1_rear"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.rs2').html '' + checkedcheckbox
    else
      $('.rs2').html ' '
    return
  $('#foam_cell_pro_rear').click ->
    checkedcheckbox = $('[name="nitro_gas2_rear"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.rs3').html '' + checkedcheckbox
    else
      $('.rs3').html ' '
    return
  return
$ ->
  $('#drag_link').click ->
    checkedcheckbox = $('[name="drag_link"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_1').html '' + checkedcheckbox
    else
      $('.extra1_1').html ' '
    return
  $('#brake_lines').click ->
    checkedcheckbox = $('[name="brake_lines"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_2').html '' + checkedcheckbox
    else
      $('.extra1_2').html ' '
    return
  $('#castor_correction').click ->
    checkedcheckbox = $('[name="castor_correction"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_3').html '' + checkedcheckbox
    else
      $('.extra1_3').html ' '
    return
  $('#upper_trailing').click ->
    checkedcheckbox = $('[name="upper_trailing"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_4').html '' + checkedcheckbox
    else
      $('.extra1_4').html ' '
    return
  $('#traling_arms').click ->
    checkedcheckbox = $('[name="traling_arms"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_5').html '' + checkedcheckbox
    else
      $('.extra1_5').html ' '
    return
  $('#front_painihard').click ->
    checkedcheckbox = $('[name="front_painihard"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_6').html '' + checkedcheckbox
    else
      $('.extra1_6').html ' '
    return
  $('#rear_painhard').click ->
    checkedcheckbox = $('[name="rear_painhard"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_7').html '' + checkedcheckbox
    else
      $('.extra1_7').html ' '
    return
  $('#bar_extention').click ->
    checkedcheckbox = $('[name="bar_extention"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_8').html '' + checkedcheckbox
    else
      $('.extra1_8').html ' '
    return
  $('#greasable_shackles').click ->
    checkedcheckbox = $('[name="greasable_shackles"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_9').html '' + checkedcheckbox
    else
      $('.extra1_9').html ' '
    return
  $('#greasable_pins').click ->
    checkedcheckbox = $('[name="greasable_pins"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_10').html '' + checkedcheckbox
    else
      $('.extra1_10').html ' '
    return
  $('#coil_spacer').click ->
    checkedcheckbox = $('[name="coil_spacer"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_11').html '' + checkedcheckbox
    else
      $('.extra1_11').html ' '
    return
  $('#steering_damper').click ->
    checkedcheckbox = $('[name="steering_damper"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_12').html '' + checkedcheckbox
    else
      $('.extra1_12').html ' '
    return
  $('#brake_hose').click ->
    checkedcheckbox = $('[name="brake_hose"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_13').html '' + checkedcheckbox
    else
      $('.extra1_13').html ' '
    return
  $('#panhard_rod').click ->
    checkedcheckbox = $('[name="panhard_rod"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_14').html '' + checkedcheckbox
    else
      $('.extra1_14').html ' '
    return
  $('#abjustable_drag').click ->
    checkedcheckbox = $('[name="abjustable_drag"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_15').html '' + checkedcheckbox
    else
      $('.extra1_15').html ' '
    return
  $('#abjustable_upper').click ->
    checkedcheckbox = $('[name="abjustable_upper"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_16').html '' + checkedcheckbox
    else
      $('.extra1_16').html ' '
    return
  $('#abjustable_lower').click ->
    checkedcheckbox = $('[name="abjustable_lower"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_17').html '' + checkedcheckbox
    else
      $('.extra1_17').html ' '
    return
  $('#abjustable_front').click ->
    checkedcheckbox = $('[name="abjustable_front"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_18').html '' + checkedcheckbox
    else
      $('.extra1_18').html ' '
    return
  $('#abjustable_rear').click ->
    checkedcheckbox = $('[name="abjustable_rear"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_19').html '' + checkedcheckbox
    else
      $('.extra1_19').html ' '
    return
  $('#trim_packers').click ->
    checkedcheckbox = $('[name="trim_packers"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_20').html '' + checkedcheckbox
    else
      $('.extra1_20').html ' '
    return
  $('#coil').click ->
    checkedcheckbox = $('[name="coil"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_21').html '' + checkedcheckbox
    else
      $('.extra1_21').html ' '
    return
  $('#load').click ->
    checkedcheckbox = $('[name="load"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_22').html '' + checkedcheckbox
    else
      $('.extra1_22').html ' '
    return
  $('#spacer_kit').click ->
    checkedcheckbox = $('[name="spacer_kit"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_23').html '' + checkedcheckbox
    else
      $('.extra1_23').html ' '
    return
  $('#abs').click ->
    checkedcheckbox = $('[name="abs"]:checkbox:checked').val()
    if typeof checkedcheckbox != "undefined"
      $('.extra1_24').html '' + checkedcheckbox
    else
      $('.extra1_24').html ' '
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