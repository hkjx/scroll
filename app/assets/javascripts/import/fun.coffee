$ ->
  $fixed = $('.fixed-block')


  $(".slide").click ->
    root = $(this).closest(".sliders")
    root.find(".slide").removeClass "active"
    $(this).addClass "active"


  $(".slide .control").on "click", ->
    current = $(".slide.active").index()
    $root = $(this).closest(".sliders")
    all_count = $root.find(".slide").size()
    $(".slide").removeClass "active"

    if $(this).is(".prev")
      if current is 0
        $root.find(".slide").eq(all_count - 1).addClass "active"
      else
        $root.find(".slide").eq(current - 1).addClass "active"
    else if $(this).is(".next")
      if current is all_count - 1
        $root.find(".slide").eq(0).addClass "active"
      else
        $root.find(".slide").eq(current + 1).addClass "active"
    false


  $(".item-close").click ->
    $root = $(this).closest(".sliders")
    $root.find(".slide").removeClass(".active")





#   $(window).scroll ->
#     if $(window).scrollTop() >= $fixed.offset().top - 300
#       $fixed.addClass("active")
#     else
#       $fixed.removeClass("active")