<?php 
global $paged, $block_class, $paged, $wpdb;
get_header(); 
?>

<style>
    .acf-map{ width: 700px; height: 430px; border: #ccc solid 1px; margin: 20px auto; }
</style>
<script type="text/javascript">
var map;
var infoWindow;
(function($) {
    function render_map($el) {
        var $markers = $el.find('.marker');

        var latlng = new google.maps.LatLng(48.856614, 2.3522219000000177);
        
        var args = {
            zoom        : 19,
            center      : latlng,
            mapTypeId   : google.maps.MapTypeId.ROADMAP
        };
        
        map = new google.maps.Map( $el[0], args);
        
        map.markers = [];
        
        $markers.each(function(){ 
            add_marker( $(this), map ); 
        });

        center_map(map);

        infoWindow = new google.maps.InfoWindow({
            content: "holding..."
        });

    }

    function add_marker($marker, map) {
        var latlng = new google.maps.LatLng( $marker.attr('data-lat'), $marker.attr('data-lng') );

        var marker = new google.maps.Marker({
            position    : latlng,
            map         : map
        });

        map.markers.push( marker );

        if ( $marker.html() ) {
            var infowindow = new google.maps.InfoWindow({
                content     : $marker.html()
            });

            google.maps.event.addListener(marker, 'click', function() {
                infowindow.open( map, marker );
            });
        }
    }
     
    function center_map(map) {
        var bounds = new google.maps.LatLngBounds();

        if (map.markers.length > 0) {
            $.each( map.markers, function( i, marker ){
                var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );
                bounds.extend(latlng);
            });

            if ( map.markers.length == 1 ) {
                map.setCenter( bounds.getCenter() );
                map.setZoom(16);
            } else {
                map.fitBounds( bounds );
            }
        } else {
            var latlng = new google.maps.LatLng(48.856614, 2.3522219000000177);
            bounds.extend(latlng);
            map.setCenter( bounds.getCenter() );
            map.setZoom(10);
        }
    }

    function show(id) {
        if(map.markers[id]){
            map.panTo(map.markers[id].getPoint());
            setTimeout('google.maps.event.trigger(map.markers[id], "click")', 500);
            map.hideControls();
        }
    }

    $(document).ready(function(){
        $('.acf-map').each(function(){
            render_map($(this));
        });

        jQuery('body.post-type-archive-agenda').on('click', '.sidebar-link', function(e){
            e.preventDefault();
            var id = $(this).attr('rel');
            if(map.markers[id]){
                map.panTo(map.markers[id].getPosition());
                setTimeout('google.maps.event.trigger(map.markers[' + id + '], "click")', 500);
            }
        });

        jQuery('body.post-type-archive-agenda').on('submit', '#search-form', function(e){
            e.preventDefault();
            var formData = jQuery(this).serialize();
            jQuery.ajax({
                url:      "<?php echo bloginfo('wpurl') ?>/ajax-agenda",
                type:     "POST",
                data:     formData,
                dataType: "JSON"
            })
            .done(function(data) {
                // Add sidebar content
                jQuery('.search-results').html(data.sidebar);
                
                // Add markers to the map
                for (i = 0; i < data.mapMarkers.length; i++) {
                    var latLng = new google.maps.LatLng(data.mapMarkers[i].lat, data.mapMarkers[i].lng);
                    var marker = new google.maps.Marker({
                        position: latLng,
                        map: map,
                        html: data.mapMarkers[i].html,
                        icon: 'http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=' + (i+1) + '|FE6256|000000',
                    });

                    map.markers.push(marker);
                }

                // Add informations to the window popup
                for (var i = 0; i < map.markers.length; i++) {
                    var marker = map.markers[i];
                    google.maps.event.addListener(marker, 'click', function () {
                        infoWindow.setContent(this.html);
                        infoWindow.open(map, this);
                    });
                }
                
                // Center map
                center_map(map);
            })
            .fail(function() {
            });
            return false;
        });
    });
})(jQuery);
</script>
<div id="main" role="main">
    <?php if( have_posts() ) : ?>
        <div class="col-left pull-left">
            <h1>Les Agendas</h1>
            <form action="" method="post" name="search-form" id="search-form">
                <label>Type d'événements :</label>
                <?php $cats = $wpdb->get_results( " SELECT wp_terms.name
                                                    FROM wp_term_relationships
                                                    LEFT JOIN wp_term_taxonomy
                                                    ON (wp_term_relationships.term_taxonomy_id = wp_term_taxonomy.term_taxonomy_id)
                                                    LEFT JOIN wp_terms on wp_term_taxonomy.term_taxonomy_id = wp_terms.term_id
                                                    WHERE wp_term_taxonomy.taxonomy = 'category'
                                                    GROUP BY wp_term_taxonomy.term_id"); ?>
                <select name="cats">
                    <?php
                    foreach ($cats as $cat) {
                        echo '<option value="' . $cat->name . '">' . $cat->name . '</option><br />'; 
                    }
                    ?>
                </select>
                        
                <label>Lieu de l'événement :</label>
                <input id="geocomplete" type="text" placeholder="Saisir une adresse" size="90" name="geocomplete"/>

                <div class="hidden">
                    <input id="lat" name="lat" type="hidden" value="">
                    <input id="lng" name="lng" type="hidden" value="">
                    <input id="formatted_address" name="formatted_address" type="hidden" value="">
                </div>

                <script type="text/javascript">
                    jQuery(function(){
                        jQuery("#geocomplete").geocomplete({ details: "form" });
                        jQuery( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd'});
                    });
                </script>
                
                <p>Date: <input type="text" id="datepicker" name="datepicker"></p>            
                <input type="submit" value="Lancer recherche" name="valider" class="button" />

                <div class="search-results"></div>

                <div id="main" role="main" class="masonry" >
                    <?php
                    $first    = true;
                    $query    = array('post_type' => 'agenda','posts_per_page' => 15,'order' => 'DESC');
                    $wp_query = new WP_Query($query);

                    while ($wp_query->have_posts()):$wp_query->the_post(); 
                        echo '<input type="hidden" name="event_lat[]" value="' . get_field('adresse')['lat'] . '" />';
                        echo '<input type="hidden" name="event_lng[]" value="' . get_field('adresse')['lng'] . '" />';
                        echo '<input type="hidden" name="post_id[]" value="' . $post->ID . '" />';
                        $block_class = 'block';
                        if( dw_is_featured_post() ) { 
                            $block_class .= ' w2';
                        } 
                        if ( $first && ! dw_is_featured_post() ) {
                            $first = false;
                            $block_class .= ' grid-sizer';
                        }

                        get_template_part( 'content', get_post_format() );
                    endwhile;

                    dw_paging_nav();
                    ?>
                </div>
            </form>
        </div>
        <div class="pull-left" style="margin-left: 150px;">
            <div class="acf-map">
                <div class="acf-map-markers"></div>
            </div>
        </div>
        <div class="clearfix">
        </div>
            
        <?php dw_show_more_button(); ?>

    <?php else: ?>
        <?php get_template_part( 'content', 'none' ) ?>
    <?php endif; ?>
</div>

<?php get_footer(); ?>