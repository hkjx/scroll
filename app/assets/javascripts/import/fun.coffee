$ ->
  $fixed = $('.fixed-block')
  $fixed.removeClass("active")

  $(".a-show").click ->
    root = $(this).closest(".sliders")
    root.find(".slide").removeClass("active")
    root.find(".more").css
      top: $(this).position().top
      left: $(this).position().left
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

    # if $root.attr("scroll")
    #   $("body").scrollTo $root.find(".slide.active"), 800,
    #     offset:
    #       top: -150




    false


  $(".item-close").click ->
    $root = $(this).closest(".sliders")
    $root.find(".slide").removeClass("active")
    false




  hash = window.location.hash
  if hash
    console.log hash
    $("#menu a[href='#{hash}']").parent().addClass("active")
  else
    $("#menu a:first").parent().addClass("active")
  # window.scrollTo 0, 0

  $(window).resize ->
    # window.scrollTo ($(document).width() - $(window).width()) / 3, 0
    $active = $("#menu li.active a").attr("href")
    $(window).scrollLeft($($active).position().left);


  $("#menu a#s0").click ->
    $("html, body").scrollTo "0px", 400

  $("#menu a#s1").click ->
    $("html, body").scrollTo "25%", 400

  $("#menu a#s2").click ->
    $("html, body").scrollTo "50%", 400, #only scroll on this axis (can be x, y, xy or yx)
      axis: "x"

  $("#menu a#s3").click ->
    $("html, body").scrollTo "75%", 400, #only scroll on this axis (can be x, y, xy or yx)
      axis: "x"

  $("#menu a#s4").click ->
    $("html, body").scrollTo "100%", 400, #only scroll on this axis (can be x, y, xy or yx)
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



  $("#slider").slider
    range: "max"
    min: 0
    max: 5
    value: 2
    slide: (event, ui) ->
      console.log ui.value




  $(".scroll").scroll ->
    if  $("#scroll1").offset().top <= 140 && $("#scroll1").offset().top >= 0 - $("#scroll1").height() + $("#summary1").height()
      $("#summary1").addClass("absolute")
    else
      $("#summary1").removeClass("absolute")


    if  $("#scroll2").offset().top <= 140 && $("#scroll2").offset().top >= 0 - $("#scroll2").height() + $("#summary2").height()
      $("#summary2").addClass("absolute")
    else
      $("#summary2").removeClass("absolute")
