$(document).on 'page:load ready', ->
  changeCategoryUrl = (event, originalEvent) ->
    category = $('#category_1st_id')
    subcategory = $('#category_2nd_id')
    sub_subcategory = $('#category_3rd_id')

    subcategory_exists = subcategory.find('option').not('[value=""]').length
    sub_subcategory_exists = sub_subcategory.find('option').not('[value=""]').length

    e = originalEvent ? event

    href = ''
    href += '/' + category.val() if category.val()
    href += '/' + subcategory.val() if subcategory.val() and (e.target.id == 'category_2nd_id' or e.target.id == 'category_3rd_id')
    href += '/' + sub_subcategory.val() if sub_subcategory.val() and e.target.id == 'category_3rd_id'

    if document.location.href.match(/\/fitting-instructions/)
      href = '/fitting-instructions' + href
    else if document.location.href.match(/\/fit-my-4x4/)
      href = '/fit-my-4x4/results' + href
    else
      if (sub_subcategory.val() and e.target.id == 'category_3rd_id') or (subcategory.val() and not sub_subcategory_exists and e.target.id == 'category_2nd_id') or (category.val() and not subcategory_exists and e.target.id = 'category_1st_id')
        href = '/category-products' + href
      else
        href = '/product-categories' + href

    # TODO: turn on pushState
    #if history and history.pushState
      #$.getScript href
      #history.pushState null, document.title, href
    #else
    document.location.href = href

  $('#category_2nd_id, #category_3rd_id').on 'dependent-data-loaded', changeCategoryUrl
  $('#category_3rd_id').on 'change', changeCategoryUrl

  #$('#products_search input').keyup ->
  #  $.get $('#products_search').attr('action'), $('#products_search').serialize(), null, 'script'
  #  history.replaceState null, document.title, $('#products_search').attr('action') + '?' + $('#products_search').serialize()

  $(window).bind 'popstate', ->
    #$.getScript location.href
    #console.log('popstate', location.href)
