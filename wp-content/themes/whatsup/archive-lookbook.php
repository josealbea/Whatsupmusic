<?php 
global $paged, $block_class, $paged, $wpdb;
get_header(); 
?>
<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/assets/css/main.css">
  <div id="container">

    <div id="main" role="main">
      		<ul id="tiles">
			<?php
    		$args = array(
	    		'post_type' => 'lookbook',
	    		'post_status' => 'publish',
	    		'posts_per_page' => 10,
	    		'paged' => $paged,
	    		'orderby' => 'date',
	    		'order' => 'DESC'
    		);
 
			$the_query = new WP_Query( $args );

			if ( $the_query->have_posts() ) :
				while ( $the_query->have_posts() ) : $the_query->the_post(); 
				$postid = get_the_ID();
			?>
					 <li>
 						<a href="<?php the_permalink() ?>" title="<?php the_title(); ?>" class="lookbookId-<?php echo $postid; ?>">
							<?php echo get_the_post_thumbnail($postid, 'large'); ?>
	          				<p><?php the_title(); ?></p>
          				</a>
 					</li>
 				<?php
				endwhile;
			endif;
			?>
		</ul>
    </div>
  </div>
  <!-- include jQuery -->
  <script src="<?php bloginfo('template_directory');?>/assets/js/jquery.min.js"></script>

  <!-- Include the imagesLoaded plug-in -->
  <script src="<?php bloginfo('template_directory');?>/assets/js/jquery.imagesloaded.js"></script>

  <!-- Include the plug-in -->
  <script src="<?php bloginfo('template_directory');?>/assets/js/jquery.wookmark.js"></script>

  <!-- Once the page is loaded, initalize the plug-in. -->
  <script type="text/javascript">
    (function ($){
      $('#tiles').imagesLoaded(function() {
        function comparatorName(a, b) {
          return $(a).data('name') < $(b).data('name') ? -1 : 1;
        }
        function comparatorPopularity(a, b) {
          return $(a).data('popularity') > $(b).data('popularity') ? -1 : 1;
        }
        function comparatorPrice(a, b) {
          return $(a).data('price') < $(b).data('price') ? -1 : 1;
        }

        // Prepare layout options.
        var options = {
          autoResize: true, // This will auto-update the layout when the browser window is resized.
          container: $('#main'), // Optional, used for some extra CSS styling
          offset: 2, // Optional, the distance between grid items
          itemWidth: 210, // Optional, the width of a grid item
          comparator: comparatorName
        };

        // Get a reference to your grid items.
        var $handler = $('#tiles li'),
            $sortbys = $('#sortbys li');

        // Call the layout function.
        $handler.wookmark(options);

        /**
         * When a filter is clicked, toggle it's active state and refresh.
         */
        var onClickSortBy = function(e) {
          e.preventDefault();
          $currentSortby = $(this);
          switch ($currentSortby.data('sortby')) {
            case 'price':
              options.comparator = comparatorPrice;
              break;
            case 'popularity':
              options.comparator = comparatorPopularity;
              break;
            case 'name':
            default:
              options.comparator = comparatorName;
              break;
          }

          $sortbys.removeClass('active');
          $currentSortby.addClass('active');

          $handler.wookmark(options);
        }

        // Capture filter click events.
        $sortbys.click(onClickSortBy);
      });
    })(jQuery);
  </script>

<?php get_footer();  ?>
</html>
