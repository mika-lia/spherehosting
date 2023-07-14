// Scroll Fixed Navbar
document.addEventListener("DOMContentLoaded", function(){
  window.addEventListener('scroll', function() {
      if (window.scrollY > 200) {
        document.getElementById('navbar_top').classList.add('fixed-top');
        // add padding top to show content behind navbar
        navbar_height = document.querySelector('.navbar').offsetHeight;
        document.body.style.paddingTop = navbar_height + 'px';
      } else {
        document.getElementById('navbar_top').classList.remove('fixed-top');
         // remove padding top from body
        document.body.style.paddingTop = '0';
      } 
  });
}); 

// Minecraft ModPack Carousel
$(document).ready(function() {

    $('#owl-minecraft-modpack').owlCarousel({
        loop: false,
        nav: false,
        dots: false,
        autoplay: true,
        autoplayTimeout: 1200,
        autoplayHoverPause: true,
        responsive:{
        0:{
            items:2
        },
        600:{
            items:4
        },
        1000:{
            items:4
        }
    }
    })

});

$(".carousel").carousel({
    interval: 5000,
});

const appendArrows = () => {
    const arrows_manager = document.getElementById("arrows-manager");
    var append_html = "";

    const arrow_left = `
        <a class="carousel-control-prev" href="#radeSlider" role="button" data-slide="prev">
        <span class="far fa-long-arrow-alt-left animate__animated animate__fadeInLeft" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
        </a>`;
    const arrow_right = `
        <a class="carousel-control-next" href="#radeSlider" role="button" data-slide="next">
        <span class="far fa-long-arrow-alt-right animate__animated animate__fadeInRight" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
        </a>`;

    append_html += arrow_left;
    append_html += arrow_right;

    arrows_manager.innerHTML = append_html;
};

const removeArrows = () => {
  const arrows_manager = document.getElementById("arrows-manager");
  var append_html = "";
  arrows_manager.innerHTML = "";

  const arrow_left = `
        <a class="carousel-control-prev" href="#radeSlider" role="button" data-slide="prev">
        <span class="far fa-long-arrow-alt-left animate__animated animate__fadeOutLeft" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
        </a>
    `;
  const arrow_right = `
        <a class="carousel-control-next" href="#radeSlider" role="button" data-slide="next">
        <span class="far fa-long-arrow-alt-right animate__animated animate__fadeOutRight" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
        </a>
  `;

  append_html += arrow_left;
  append_html += arrow_right;
  arrows_manager.innerHTML = append_html;

  setTimeout(() => {
    arrows_manager.innerHTML = "";
  }, 500);
};

$("#Carousel").hover(
    () => {
        appendArrows();
    },
    () => {
        removeArrows();
    }
);

// Games Slider

$('.games').owlCarousel({
  loop: true,
  margin: 10,
  nav: true,
  navText: [
    "<i class='fa fa-caret-left'></i>",
    "<i class='fa fa-caret-right'></i>"
  ],
  autoplay:true,
  autoplayTimeout:2000,
  autoplayHoverPause:true,
  responsive: {
    0: {
      items: 1
    },
    600: {
      items: 2
    },
    1000: {
      items: 3
    }
  }
});

$( '.closeall' ).click( function( e ) {
  e.preventDefault();
  $( '.accordion .collapse.show' ).collapse( 'hide' );
  return false;
} );
$( '.openall' ).click( function( e ) {
  e.preventDefault();
  $( '.accordion .collapse' ).collapse( 'show' );
  return false;
} );

if ( window.location.hash ) {
  redirect( window.location.hash );
}

$( 'a[href^="#"]' ).on( 'click', function( e ) {
  e.preventDefault();
  var a = document.createElement( 'a' );
    a.href = this.href;
  redirect ( a.hash );
  return false;
} );

function redirect( hash ) {
  // $( hash ).attr( 'aria-expanded', 'true' ).focus();
  // $( hash + '+div.collapse' ).addClass( 'show' ).attr( 'aria-expanded', 'true' );
  $( hash + '+div.collapse' ).collapse( 'show' );

  // using this because of static nav bar space
  $( 'html, body' ).animate( {
    scrollTop: $( hash ).offset().top - 60
  }, 10, function() {
  // Add hash (#) to URL when done scrolling (default click behavior)
    window.location.hash = hash;
  } );
}

document.documentElement.setAttribute("lang", "en");
document.documentElement.removeAttribute("class");


// Staff Team 
jQuery("#staff").owlCarousel({
  autoplay: true,
  rewind: true,
  margin: 20,
  responsiveClass: true,
  autoHeight: true,
  autoplayTimeout: 4000,
  smartSpeed: 800,
  nav: false,
  dots: false,
  responsive: {
    0: {
      items: 1
    },

    576: {
      items: 2
    },

    768: {
      items: 3
    },

    1024: {
      items: 4
    },

    1366: {
      items: 4
    }
  }
});