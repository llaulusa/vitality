# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  window.addEventListener 'scroll', (->
    if window.scrollY > 350
      $('.navbar').addClass('navbar-inverse')
    else
      $('.navbar').removeClass('navbar-inverse')
    return
  ), false

  $('.owl-carousel').owlCarousel
    margin: 10
    nav: false
    navText: [
      "<i class='fa fa-angle-left'></i>"
      "<i class='fa fa-angle-right'></i>"
    ]
 
