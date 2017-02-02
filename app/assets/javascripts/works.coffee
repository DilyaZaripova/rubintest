$ ->
  change_trigger = (handler) ->
    $.get
      url: "/works/#{$('select').val()}"
      success: (data) ->
        box = $ '.carousel-inner'
        box.empty()
        console.log(data)
        data.forEach (image) ->
          box.append "<div class='item'><a href='/images/#{image.id}'><img src='/assets/pictures/#{image.file}'></a></div>"
        $($('.item')[0]).addClass('active')
  $('select').change change_trigger
  change_trigger $('select')