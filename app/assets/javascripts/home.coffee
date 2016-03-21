# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  window.addEventListener 'scroll', (->
    if window.scrollY > 500
      $('.navbar').removeClass('.navbar-expanded')
    else
      $('.navbar').addClass('.navbar-expanded')
    return
  ), false

 
