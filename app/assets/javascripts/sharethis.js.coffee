$ ->
  ShareThisTurbolinks.reload()

# if you're using jquery.turbolinks, you don't need this binding  
$(document).on 'page:load', ->
  ShareThisTurbolinks.reload()

$(document).on 'page:restore', ->
  ShareThisTurbolinks.restore()

ShareThisTurbolinks =
  load: ->
    window.switchTo5x = false
    $.ajax {
      dataType: 'script'
      cache: true
      url: 'https://ws.sharethis.com/button/buttons.js'
      success: ->
        window.stLight.options
          publisher: '9f21a09e-c2d1-4c03-adb8-1c7ef5311bb6'
          doNotHash: false
          doNotCopy: false
          hashAddressBar: false
    }

  reload: ->
    stlib?.cookie.deleteAllSTCookie()
    $('[src*="sharethis.com"], [href*="sharethis.com"]').remove()
    window.stLight = undefined
    @load()

  restore: ->
    $('.stwrapper, #stOverlay').remove()
    @reload()
