$(document).on 'page:load ready', ->
  $('#search-results-page .search-filters input[type=checkbox]').on 'click', ->
    searchFilters = {
      category: $('#search_results_categories_category').is(':checked')
      products: $('#search_results_categories_products').is(':checked')
      media: $('#search_results_categories_media').is(':checked')
      news: $('#search_results_categories_news').is(':checked')
      events: $('#search_results_categories_events').is(':checked')
      blog: $('#search_results_categories_blog').is(':checked')
    }

    $.cookie 'search_filters', JSON.stringify(searchFilters), {expires:7, path: '/search'}

    document.location.reload true
