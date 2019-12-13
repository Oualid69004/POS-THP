// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require chart.js/Chart.min
//= require rails-ujs
//= require activestorage
//= require_tree .
//= require jquery/jquery.min
//= require bootstrap/js/bootstrap.bundle.min
//= require bootstrap/js/bootstrap.min
//= require jquery-easing/jquery.easing.min
//= require assets/javascripts/sb-admin-2.min
//= require bootstrap/js/bootstrap
//= require bootstrap/js/classie
//= require bootstrap/js/jquery-scrolltofixed
//= require bootstrap/js/jquery.1.8.3.min
//= require bootstrap/js/jquery.easing.1.3
//= require bootstrap/js/jquery.isotope
//= require bootstrap/js/wow
<script type="text/javascript">
$(document).ready(function(e) {
    $('.res-nav_click').click(function() {
        $('ul.toggle').slideToggle(600)
    });

    $(document).ready(function() {
        $(window).bind('scroll', function() {
            if ($(window).scrollTop() > 0) {
                $('#header_outer').addClass('fixed');
            } else {
                $('#header_outer').removeClass('fixed');
            }
        });

    });


});

function resizeText() {
    var preferredWidth = 767;
    var displayWidth = window.innerWidth;
    var percentage = displayWidth / preferredWidth;
    var fontsizetitle = 25;
    var newFontSizeTitle = Math.floor(fontsizetitle * percentage);
    $(".divclass").css("font-size", newFontSizeTitle)
}
</script>


<script type="text/javascript">
		jQuery(document).ready(function($) {
			// Portfolio Isotope
			var container = $('#portfolio-wrap');


			container.isotope({
				animationEngine: 'best-available',
				animationOptions: {
					duration: 200,
					queue: false
				},
				layoutMode: 'fitRows'
			});

			$('#filters a').click(function() {
				$('#filters a').removeClass('active');
				$(this).addClass('active');
				var selector = $(this).attr('data-filter');
				container.isotope({
					filter: selector
				});
				setProjects();
				return false;
			});


			function splitColumns() {
				var winWidth = $(window).width(),
					columnNumb = 1;


				if (winWidth > 1024) {
					columnNumb = 4;
				} else if (winWidth > 900) {
					columnNumb = 2;
				} else if (winWidth > 479) {
					columnNumb = 2;
				} else if (winWidth < 479) {
					columnNumb = 1;
				}

				return columnNumb;
			}

			function setColumns() {
				var winWidth = $(window).width(),
					columnNumb = splitColumns(),
					postWidth = Math.floor(winWidth / columnNumb);

				container.find('.portfolio-item').each(function() {
					$(this).css({
						width: postWidth + 'px'
					});
				});
			}

			function setProjects() {
				setColumns();
				container.isotope('reLayout');
			}

			container.imagesLoaded(function() {
				setColumns();
			});


			$(window).bind('resize', function() {
				setProjects();
			});

		});
		$(window).load(function() {
			jQuery('#all').click();
			return false;
		});
	</script>











