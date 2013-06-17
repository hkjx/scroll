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



  window.scrollTo 0, 0

  $(window).resize ->
    # window.scrollTo ($(document).width() - $(window).width()) / 3, 0
    #  $(window).scrollLeft($(elementToScrollTo).position().left);
  $("#menu a#s1").click ->
    $("html, body").scrollTo "0px", 400

  $("#menu a#s2").click ->
    $("html, body").scrollTo "33.33333%", 400, #only scroll on this axis (can be x, y, xy or yx)
      axis: "x"

  $("#menu a#s3").click ->
    $("html, body").scrollTo "66.66666%", 400, #only scroll on this axis (can be x, y, xy or yx)
      axis: "x"

  $("#menu a#s4").click ->
    $("html, body").scrollTo "99.9999%", 400, #only scroll on this axis (can be x, y, xy or yx)
      axis: "x"

  $.localScroll
    target: ".curtains" # could be a selector or a jQuery object too.
    queue: true
    duration: 400
    hash: true
    onBefore: (e, anchor, $target) ->
      $("#menu li").removeClass("active")
      $("#menu a[href='##{$(anchor).attr("id")}']").parent().addClass("active")

    # The 'this' is the settings object, can be modified
    onAfter: (anchor, settings) ->


  # The 'this' contains the scrolled element (#content)



  # $("#menu").stickyScroll container: "body"


  # $(window).scroll ->
  #   if $(window).scrollTop() >= $(".scroll-block").offset().top - 300
  #     $fixed.addClass("active").css("top":$fixed.height())
  #     $fixed.css("margin-top":140)
  #   else
  #     $fixed.removeClass("active")



  #   console.log "scrollTop " + $(window).scrollTop()
  #   console.log  $(".scroll-block").offset().top
  #   if $(window).scrollTop() - $(".scroll-block").height()  >= $(".scroll-block").offset().top - 400
  #     $fixed.removeClass("active")
  #     $fixed.css("margin-top":$(".scroll-block").height())
