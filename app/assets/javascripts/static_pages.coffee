$(document).on 'ready turbolinks:load', ->
  $('a.load-more').click (e) ->
    e.preventDefault()
    $('.load-more').hide()
    $('.loading-gif').show()
    last_id = $('.record').last().attr('data-id')

    $.ajax
      type: "GET"
      url: $(this).attr('href')
      data: {
        id: last_id
      }
      dataType: "script"
      success: () ->
        $('.loading-gif').hide()
        $('.load-more').show()

$(window).scroll ->
  if ($(window).scrollTop() == $(document).height() - $(window).height())
    if (window.location.href.includes('reports'))
      $('.loading-gif').show()

      last_id = $('.record').last().attr('data-id')

      $.ajax
        type: "GET"
        dataType: "script"
        url: window.location.href
        data: {
          id: last_id
        }
        success: () ->
          $('.loading-gif').hide()