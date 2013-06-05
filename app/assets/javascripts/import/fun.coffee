$ ->
  $fixed = $('.fixed-block')
  $fixed.removeClass("active")

  $(".a-show").click ->
    root = $(this).closest(".sliders")
    root.find(".slide").removeClass "active"
    $(this).closest(".slide").addClass "active"
    false



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

    if $root.attr("scroll")
      $("body").scrollTo $root.find(".slide.active"), 800,
        offset:
          top: -150




    false


  $(".item-close").click ->
    $root = $(this).closest(".sliders")
    $root.find(".slide").removeClass("active")
    false




  # $(window).scroll ->
  #   if $(window).scrollTop() >= $(".scroll-block").offset().top - 300
  #     $fixed.addClass("active")
  #   else
  #     $fixed.removeClass("active")



  #   console.log "scrollTop " + $(window).scrollTop()

  #   console.log "offsetTop " + $(".scroll-block").offset().top  + $(".scroll-block").height()

  #   if $(window).scrollTop() - 420 > $(".scroll-block").offset().top
  #     $fixed.removeClass("active")
  #     $fixed.css("top":$(".scroll-block").height()-00)
