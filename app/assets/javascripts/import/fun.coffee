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
    $("#menu a[href='#{hash}']").parent().addClass("active")
    if hash.search("section")
      setBtnScroll $(hash).find(".d-scroll").eq(0).attr("id"), $(hash).find(".d-scroll").eq(1).attr("id")
  else
    $("#menu a:first").parent().addClass("active")



  if hash == "#section-1" ||  hash == "#section-2"
    $("#scroll-btn").show()
  else
    $("#scroll-btn").hide()



  $(".scroll").scrollTop(0)

  $(window).resize ->
    # window.scrollTo ($(document).width() - $(window).width()) / 3, 0
    $active = $("#menu li.active a").attr("href")
    $(window).scrollLeft($($active).position().left);


  $("#scroll-btn a").click ->

    top_b  = $("#scroll-btn a.up").attr("top")
    down_b = $("#scroll-btn a.down").attr("down")

    if $(this).is(".up")
      top = $("#" + top_b)
      block_scroll = top.closest(".scroll")
      $(block_scroll).scrollTo top, 400,
        axis: "y"
      setBtnScroll top.attr("top"), top.attr("down")
    else  # Down
      down = $("#" + down_b)

      block_scroll = down.closest(".scroll")
      $(block_scroll).scrollTo down, 400,
        axis: "y"
      setBtnScroll down.attr("top"), down.attr("down")

    log "top : " + $("#scroll-btn a.up").attr("top")
    log  "down : " + $("#scroll-btn a.down").attr("down")

    false



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





  slider = $("#slider").slider
    range: "max"
    min: 0
    max: 4
    value: $("#menu li.active").index()
    slide: (event, ui) ->
      if ui.value == 0
        $(".ui-slider-handle").addClass("ui0")
      else
        $(".ui-slider-handle").removeClass("ui0")
    stop: (event, ui) ->
      $("#menu li").removeClass("active")
      $li = $("#menu a[href='#section-#{ui.value}']").parent().addClass("active")
      $li.find("a").trigger('click')

  if hash == "#section-0"
    $(".ui-slider-handle").addClass("ui0")


  $("#menu a").click ->
    pr = $(this).parent().index()
    pr = pr*25
    $("html, body").scrollTo "#{pr}%", 400,
      axis: "x"
    setBtnScroll $($(this).attr("href")).find(".d-scroll").eq(0).attr("id"), $($(this).attr("href")).find(".d-scroll").eq(1).attr("id")

    if $(this).parent().index() > 0
      $(".ui-slider-handle").removeClass("ui0")

    slider.slider "value", $(this).parent().index()


    if $(this).attr("href") == "#section-1" ||  $(this).attr("href") == "#section-2"
      $("#scroll-btn").show()
    else
      $("#scroll-btn").hide()


    false



  $(".scroll").scroll ->
    if  $("#scroll1").offset().top <= 140 && $("#scroll1").offset().top >= 0 - $("#scroll1").height() + $("#summary1").height()
      $("#summary1").addClass("absolute")
    else
      $("#summary1").removeClass("absolute")

    if  $("#scroll2").offset().top <= 140 && $("#scroll2").offset().top >= 0 - $("#scroll2").height() + $("#summary2").height()
      $("#summary2").addClass("absolute")
    else
      $("#summary2").removeClass("absolute")


    if  $("#scroll3").offset().top <= 140 && $("#scroll3").offset().top >= 0 - $("#scroll3").height() + $("#summary3").height()
      $("#summary3").addClass("absolute")
    else
      $("#summary3").removeClass("absolute")



@setBtnScroll = (top, down) ->
  $("#scroll-btn .up").attr("top",top)
  $("#scroll-btn .down").attr("down",down)
@log = (data) ->
  console.log data