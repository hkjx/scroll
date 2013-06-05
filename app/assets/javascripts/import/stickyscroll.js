/**
 * StickyScroll
 * written by Rick Harris - @iamrickharris
 * Changed to use CSS classes instead of updating the position - @thetwinsattack
 * Requires jQuery 1.4+
 *
 * Make elements stick to the top of your page as you scroll
 *
 * See README for details
 *
*/

(function($) {
  $.fn.stickyScroll = function(options) {

    var methods = {

      init : function(options) {

        var settings;

        settings = $.extend({
          mode : 'auto',
          container : $('body'),
          topBoundary : null,
          bottomBoundary : null,
          offset: 20
        }, options);

        function bottomBoundary() {
          return settings.container.innerHeight() + settings.container.offset().top - settings.offset
        }

        function topBoundary() {
          return settings.container.offset().top - settings.offset;
        }

        function elHeight(el) {
          return $(el).outerHeight(true);
        }

        // make sure user input is a jQuery object
        settings.container = $(settings.container);
        if (!settings.container.length) {
          if (console) {
            console.log('StickyScroll: the element ' + options.container + ' does not exist, we\'re throwing in the towel');
          }
          return;
        }

        // calculate automatic bottomBoundary
        if (settings.mode === 'auto') {
          settings.topBoundary = topBoundary();
          settings.bottomBoundary = bottomBoundary();
        }

        return this.each(function(index) {
          /* el is the fixed element */
          var el = $(this), win = $(window), id = Date.now() + index, height = elHeight(el);

          win.bind('scroll.stickyscroll-' + id, function() {

            var scrollTop = $(document).scrollTop();

            if (scrollTop <= settings.topBoundary) {
              el.addClass("fixed-top").removeClass("fixed");
            }
            if (scrollTop >= settings.topBoundary) {
              el.addClass("fixed").removeClass("fixed-top fixed-bottom");
            }
            if (scrollTop >= (settings.bottomBoundary - height)) {
              el.addClass("fixed-bottom").removeClass("fixed");
            }

          });
        });
      }
    };

    // if options is a valid method, execute it
    if (methods[options]) {
      return methods[options].apply(this, Array.prototype.slice.call(arguments, 1));
    }
    // or, if options is a config object, or no options are passed, init
    else if ( typeof options === 'object' || !options) {
      return methods.init.apply(this, arguments);
    } else if (console) {
      console.log('Method' + options + ' does not exist on jQuery.stickyScroll');
    }

  };
})(jQuery);