window.Ironman ? window.Ironman = {utils: {}}

Ironman.utils.updateQueryStringParameter = (uri, key, value) ->
  re = new RegExp("([?|&])" + key + "=.*?(&|#|$)", "i")
  if uri.match(re)
    uri.replace re, "$1" + key + "=" + encodeURIComponent(value) + "$2"
  else
    hash = ""
    separator = (if uri.indexOf("?") isnt -1 then "&" else "?")
    if uri.indexOf("#") isnt -1
      hash = uri.replace(/.*#/, "#")
      uri = uri.replace(/#.*/, "")
    uri + separator + key + "=" + encodeURIComponent(value) + hash
