# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
# require bootstrap
#= require categories

$(document).on 'page:load ready', ->
  #$('.tooltip-label').tooltip()
  #$('.popover-label').popover()

  $('select[data-option-dependent=true]').each (i) ->
    observer_dom_id = $(this).attr('id')
    observed_dom_id = $(this).data('option-observed')
    url_mask = $(this).data('option-url')
    key_method = $(this).data('option-key-method')
    value_method = $(this).data('option-value-method')
    prompt = (if $(this).has('option[value=]').size() then $(this).find('option[value=]') else $('<option value="">').text($(this).data('option-prompt')))
    regexp = /:[0-9a-zA-Z_]+:/g
    observer = $('select#' + observer_dom_id)
    observed = $('#' + observed_dom_id)
    observer_label = $('label[for=' + observer_dom_id)

    if (not observer.val() and observed.size() > 1) or observer.find('option').not('[value=]').length == 0
      observer.attr 'disabled', true
      observer.hide()
      observer_label.hide()

    observed.on 'change', (e) ->
      observer.empty().append prompt
      if observed.val()
        url = url_mask.replace(regexp, observed.val())
        $.getJSON url, (data) ->
          if data?
            if not data.length
              observer.attr 'disabled', true
              observer.hide()
              observer_label.hide()
            else
              $.each data, (i, object) ->
                observer.append $('<option>').attr('value', object[key_method]).text(object[value_method])
                observer.attr 'disabled', false
                observer.show()
                observer_label.show()

          observer.trigger 'dependent-data-loaded', e
      else
        observer.trigger 'dependent-data-loaded', e
