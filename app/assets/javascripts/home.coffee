# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  window.addEventListener 'scroll', (->
    if window.scrollY > 450
      $('.navbar').addClass('navbar-inverse')
    else
      $('.navbar').removeClass('navbar-inverse')
    return
  ), false

  $('.owl-carousel').owlCarousel
    margin: 10
    items: 3
    nav: true
    pagination: false
    rewind: true
    loop: true
    navText: [
      "<i class='fa fa-angle-left fa-2x'></i>"
      "<i class='fa fa-angle-right fa-2x'></i>"
    ]

  $('.portfolio-carousel').owlCarousel
    items: 1
    center: true
    navigation: true
    pagination: false
    navText: [
      "<i class='fa fa-angle-left'></i>"
      "<i class='fa fa-angle-right'></i>"
    ]
    autoHeight: true
    mouseDrag: false
    touchDrag: false
    transitionStyle: 'fadeUp'
  
  $('.testimonials-carousel').owlCarousel
    items: 1
    center: true
    navigation: true
    pagination: true
    autoHeight: true
    navText: [
      "<i class='fa fa-angle-left'></i>"
      "<i class='fa fa-angle-right'></i>"
    ]
    transitionStyle: 'backSlide'
    
  filterList =
    init: ->
      $('#portfoliolist').mixItUp
        targetSelector: '.portfolio'
        filterSelector: '.filter'
        effects: [ 'fade' ]
        easing: 'snap'
        onMixEnd: filterList.hoverEffect()
      return
    hoverEffect: ->
      $('#portfoliolist .portfolio').hover (->
        $(this).find('.caption').stop().animate { bottom: 0 }, 200, 'easeOutQuad'
        $(this).find('.img').stop().animate { top: -20 }, 300, 'easeOutQuad'
        return
      ), ->
        $(this).find('.caption').stop().animate { bottom: -75 }, 200, 'easeInQuad'
        $(this).find('.img').stop().animate { top: 0 }, 300, 'easeOutQuad'
        return
      return
  filterList.init()
 
