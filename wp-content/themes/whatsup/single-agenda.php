<?php
/*
Template Name: Page d'un événement
*/

get_header();
?>

<style type="text/css">
.acf-map {
	width: 100%;
	height: 200px;
	border: #ccc solid 1px;
	margin: 20px 0;
}
</style>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript">
(function($) {
function render_map( $el ) {
 
	// var
	var $markers = $el.find('.marker');
 
	// vars
	var args = {
		zoom		: 16,
		center		: new google.maps.LatLng(0, 0),
		mapTypeId	: google.maps.MapTypeId.ROADMAP
	};
 
	// create map	        	
	var map = new google.maps.Map( $el[0], args);
 
	// add a markers reference
	map.markers = [];
 
	// add markers
	$markers.each(function(){
 
    	add_marker( $(this), map );
 
	});
 
	// center map
	center_map( map );
 
}
 
function add_marker( $marker, map ) {
 
	// var
	var latlng = new google.maps.LatLng( $marker.attr('data-lat'), $marker.attr('data-lng') );
 
	// create marker
	var marker = new google.maps.Marker({
		position	: latlng,
		map			: map
	});
 
	// add to array
	map.markers.push( marker );
 
	// if marker contains HTML, add it to an infoWindow
	if( $marker.html() )
	{
		// create info window
		var infowindow = new google.maps.InfoWindow({
			content		: $marker.html()
		});
 
		// show info window when marker is clicked
		google.maps.event.addListener(marker, 'click', function() {
 
			infowindow.open( map, marker );
 
		});
	}
 
}
 
 
function center_map( map ) {
 
	// vars
	var bounds = new google.maps.LatLngBounds();
 
	// loop through all markers and create bounds
	$.each( map.markers, function( i, marker ){
 
		var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );
 
		bounds.extend( latlng );
 
	});
 
	// only 1 marker?
	if( map.markers.length == 1 )
	{
		// set center of map
	    map.setCenter( bounds.getCenter() );
	    map.setZoom( 16 );
	}
	else
	{
		// fit to bounds
		map.fitBounds( bounds );
	}
 
}
 
$(document).ready(function(){
 
	$('.acf-map').each(function(){
 
		render_map( $(this) );
 
	});
 
});
 
})(jQuery);
</script>


<div id="main" role="main">
    <div class="single-page row-fluid">
        <div class="modal-buttons modal-nav">
            <?php $next = get_next_post();?>
            <button data-post-id="<?php the_ID(); ?>" <?php echo ! empty($next) ? ' data-href="'.get_permalink( $next->ID ).'" title="'.htmlentities($next->post_title).'"' : ''; ?> type="button" class="left next-post <?php echo empty($next) ? 'hide' : ''; ?>"><i class="icon-chevron-left"></i></button>
            <?php $prev = get_previous_post(); ?>
            <button data-post-id="<?php the_ID() ?>" <?php echo ! empty($prev) ? 'data-href="'.get_permalink( $prev->ID ).'"  title="'.htmlentities($prev->post_title).'"' : ''; ?> type="button" class="right prev-post <?php echo empty($prev) ? 'hide' : ''; ?>"><i class="icon-chevron-right"></i></button>
        </div>
        <div class="social-bar">
            <ul>
                <?php $url = get_permalink(); ?>
                <li><a class="facebook" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo rawurlencode($url); ?>" title="<?php _e('Publier sur Facebook','dw') ?>" target='_blank'><i class="icon-facebook"></i><span><?php echo dw_get_facebook_count( $url ) ?></span></a></li>
                <li><a  class="twitter" href="https://twitter.com/intent/tweet?source=webclient&amp;text=<?php echo get_the_title() . rawurlencode( $url ) ?>" title="<?php _e('Publier sur Twitter','dw') ?>"  target='_blank'><i class="icon-twitter"></i><span><?php echo dw_get_twitter_count( $url ); ?></span></a></li>
                <li><a  class="googleplus" href="https://plus.google.com/share?url=<?php echo rawurlencode($url ); ?>" title="<?php _e('Publier sur Google+','dw') ?>" target='_blank'><i class="icon-google-plus"></i><span><?php echo dw_get_plusones_share_count( $url ) ?></span></a></li>
                <li><a href="#comments" class="comment" title="<?php _e('Commenter cet article','dw') ?>"><i class="icon-comment"></i><span><?php comments_number( '0', '1', '%') ?></span></a></li>
                <li><a class="email" href="mailto:?Subject=<?php echo rawurlencode( get_the_title() ) ?>" title="<?php _e('Envoyer cet article par e-mail','dw') ?>"><i class="icon-envelope-alt"></i></a></li>
                <li><a  class="print" href="javascript: window.print();" title="<?php _e('Imprimer cet article','dw') ?>"><i class="icon-print"></i></a></li>
            </ul>
        </div>
        <div class="single-detail">
            <div class="scroller">
                <div class="main-content">
                    <h1><?php the_field('titre'); ?></h1>
                    <h2><i class="icon-globe"></i>Lieu : <?php the_field('lieu'); ?></h2>
                    <div class="agenda-image span4">
                    	<img src="<?php the_field('image'); ?>" alt="<?php the_field('titre'); ?>" width="" height="" />
                    </div>
                    <div class="agenda-description span8">
                    	<?php the_field('description'); ?>
                    </div>
                    
                    <div class="agenda-maps span12">
                    	<h2><i class="icon-compass"></i>Itinéraire </h2>
                    	<?php 
 
							$location = get_field('adresse');
							 
							if( !empty($location) ):
							?>
							<div class="acf-map">
								<div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
							</div>
							<?php endif; ?>
                    </div>
                    <div class="agenda-achat span3">
                    	<a style="width:100px" class="button" href="<?php the_field('lien_vers_reservation'); ?>" title="<?php the_field('titre'); ?>">Acheter</a>
                	</div>
                </div>
                <?php get_sidebar(); ?>
            </div>
        </div>
    </div>
</div>


<?php get_footer(); ?>