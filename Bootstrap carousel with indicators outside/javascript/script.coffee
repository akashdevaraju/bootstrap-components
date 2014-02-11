$(document).ready ->
  $(".carousel").carousel interval: 2000
  $(".carousel").on "slid", ->
    to_slide = $(".carousel-item.active").attr("data-slide-no")
    $(".myCarousel-target.active").removeClass "active"
    $(".carousel-indicators [data-slide-to=" + to_slide + "]").addClass "active"
    return
  $(".myCarousel-target").on "click", ->
    $(this).preventDefault()
    $(".carousel").carousel parseInt($(this).attr("data-slide-to"))
    $(".myCarousel-target.active").removeClass "active"
    $(this).addClass "active"
    return
  return
