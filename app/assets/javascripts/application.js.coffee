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
#= require modernizr/modernizr.custom.min
#= require jquery
#= require jquery_ujs
#= require turbolinks
# require bootstrap
#= require categories
#= require jquery-slider/jssor.core
#= require jquery-slider/jssor.utils
#= require jquery-slider/jssor.slider
#= require glasscase/jquery.glasscase

$(document).on 'page:load ready', ->
  #$('.tooltip-label').tooltip()
  #$('.popover-label').popover()

  $('select[data-option-dependent=true]').each (i) ->
    observer_dom_id = $(this).attr('id')
    observed_dom_id = $(this).data('option-observed')
    url_mask = $(this).data('option-url')
    key_method = $(this).data('option-key-method')
    value_method = $(this).data('option-value-method')
    prompt = (if $(this).has('option[value=""]').size() then $(this).find('option[value=""]') else $('<option value="">').text($(this).data('option-prompt')))
    regexp = /:[0-9a-zA-Z_]+:/g
    observer = $('select#' + observer_dom_id)
    observed = $('#' + observed_dom_id)
    observer_label = $('label[for=' + observer_dom_id)

    if (not observer.val() and observed.size() > 1) or observer.find('option').not('[value=""]').length == 0
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

  if $('#layout-photo-slideshow').length
    options = {
      $FillMode: 2,       #[Optional] The way to fill image in slide, 0 stretch, 1 contain (keep aspect ratio and put all inside slide), 2 cover (keep aspect ratio and cover whole slide), 4 actual size, 5 contain for large image, actual size for small image, default value is 0
      $AutoPlay: true,    #[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
      $AutoPlayInterval: 4000,
      $PauseOnHover: 1,
      $ArrowKeyNavigation: true,
      $SlideDuration: 800,                               #Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
      $MinDragOffsetToSlide: 20,
      $DragOrientation: 1, #[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

      $BulletNavigatorOptions: {                        #Optional] Options to specify and enable navigator or not
        $Class: $JssorBulletNavigator$,                 #[Required] Class to create navigator instance
        $ChanceToShow: 2,                               #[Required] 0 Never, 1 Mouse Over, 2 Always
        $AutoCenter: 1,                                 #[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
        $Steps: 1,                                      #[Optional] Steps to go for each navigation request, default value is 1
        $Lanes: 1,                                      #[Optional] Specify lanes to arrange items, default value is 1
        $SpacingX: 8,                                   #[Optional] Horizontal space between each item in pixel, default value is 0
        $SpacingY: 8,                                   #[Optional] Vertical space between each item in pixel, default value is 0
        $Orientation: 1                                 #[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
      },

      $ArrowNavigatorOptions: {                         #[Optional] Options to specify and enable arrow navigator or not
        $Class: $JssorArrowNavigator$,                  #[Requried] Class to create arrow navigator instance
        $ChanceToShow: 1,                               #[Required] 0 Never, 1 Mouse Over, 2 Always
        $AutoCenter: 2,                                 #[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
        $Steps: 1                                       #[Optional] Steps to go for each navigation request, default value is 1
      }
    }

    jssor_slider1 = new $JssorSlider$("layout-photo-slideshow", options)

  $('#glasscase')?.glassCase({
    widthDisplay: 635,
    heightDisplay: 360,
    isDownloadEnabled: false,
    nrThumbsPerRow: 5,
    isZoomEnabled: false
  })
