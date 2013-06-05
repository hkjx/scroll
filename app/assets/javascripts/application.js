// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
// = require_tree ./import

  $(function(){



       $('.curtains').curtain({
           scrollSpeed: 100,
           controls: '#scroll-btn',
           curtainLinks: '.curtain-links',
           sectionElement: 'li',
           nextSlide: function(e){
            console.log(e);
            if(e == 'section-2'){
              $('#summary1').stickyScroll({ container: '#scroll1' });
              $('#summary2').stickyScroll({ container: '#scroll2' });
            }


            if(e == 'section-3'){
              $('#summary3').stickyScroll({ container: '#scroll3' });
            }

           },

           prevSlide: function(e){
           },

           allLoaded: function() {

           }
       });





    });




$(document).ready(function() {

    // $('#summary1').stickyScroll({ container: '#scroll1' });
    // $('#summary2').stickyScroll({ container: '#scroll2' });
    // $('#summary3').stickyScroll({ container: '#scroll3' });
    // $('#summary2').scrollToFixed({
    //   marginTop: 300,
    //   limit: $('#scroll2').height() + $('#scroll2').offset().top - $('#summary2').height()
    // });

    // $('#summary3').scrollToFixed({
    //   marginTop: 300,
    //   limit: $('#scroll3').height() + $('#scroll3').offset().top - $('#summary3').height()
    // });



});
















