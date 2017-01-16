$(document).ready(function() {


  $(window).load(function() { 
      $("#loader").fadeOut("slow"); 

  });


  $(window).bind('scroll', function() {
    var navHeight = $(window).height() - 400;
    if ($(window).scrollTop() > navHeight) {
      $('.navigation-menus').addClass('on');
    } else {
      $('.navigation-menus').removeClass('on');
    }
  });

  $('body').scrollspy({
      target: '.navigation-menus',
      offset: 80
  })


  $("#testimonial-content").owlCarousel({
 
      autoPlay: true,
      navigation : true, // Show next and prev buttons
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem:true
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
 
  });
  
  $(function() {
    $('a[href*="#"]:not([href="#"])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html, body').animate({
            scrollTop: target.offset().top
          }, 1000);
          return false;
        }
      }
    });
  });


  $('.image-popup').magnificPopup({
    
    type: 'image',
    removalDelay: 300,
    mainClass: 'mfp-fade'
    
  });

  $('.aniview').AniView();
  
});

