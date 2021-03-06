<?php 
global $paged, $block_class, $paged, $wpdb;
get_header(); 
?>
<script type="text/javascript">
var map;
var infoWindow;
var markers = [];   
(function($) {
    $(document).ready(function(){
        function initialize() {
            var paris = new google.maps.LatLng(48.856614, 2.3522219000000177);
            var mapOptions = {
                zoom: 10,
                center: paris,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById('acf-map'), mapOptions);
        
            // Set the infoWindow to default value
            infoWindow = new google.maps.InfoWindow({
                content: "En attente..."
            });
        }

        // Add a marker to the map and push to the array.
        function addMarker(location, html, number) {
            var marker = new google.maps.Marker({
                position: location,
                map: map,
                html: html,
                icon: 'http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=' + number + '|FE6256|000000',
            });
            markers.push(marker);

            google.maps.event.addListener(marker, 'click', function() {
                infoWindow.setContent(this.html);
                infoWindow.open(map, marker);
                map.panTo(this.position);
            });
        }

        // Sets the map on all markers in the array.
        function setAllMap(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }

        // Removes the markers from the map, but keeps them in the array.
        function clearMarkers() {
            setAllMap(null);
        }

        // Shows any markers currently in the array.
        function showMarkers() {
            setAllMap(map);
        }

        // Deletes all markers in the array by removing references to them.
        function deleteMarkers() {
            clearMarkers();
            markers = [];
        }

        // Centers map
        function centerMap(map) {
            var bounds = new google.maps.LatLngBounds();

            if (markers.length > 0) {
                $.each(markers, function(i, marker) {
                    var latlng = new google.maps.LatLng(marker.position.lat(), marker.position.lng());
                    bounds.extend(latlng);
                });

                if (markers.length == 1) {
                    map.setCenter(bounds.getCenter());
                    map.setZoom(16);
                } else {
                    map.fitBounds(bounds);
                }
            } else {
                if ($('#lat').val() != "" || $('#lng').val() != "") {
                    var latlng = new google.maps.LatLng($('#lat').val(), $('#lng').val());
                } else {
                    var latlng = new google.maps.LatLng(48.856614, 2.3522219000000177);
                }
                
                bounds.extend(latlng);
                map.setCenter(bounds.getCenter());
                map.setZoom(10);
            }
        }

        function scrollToMap(){
            // Add "65", which correspons to the header's height
            $('html,body').animate({
                scrollTop: $("#acf-map").offset().top - 210
            }, 'slow');
        }


        // Display every event
        var formData = $('#search-form').serialize();
        $.ajax({
            url:      "<?php echo bloginfo('wpurl') ?>/ajax-agenda",
            type:     "POST",
            data:     formData,
            dataType: "JSON"
        })
        .done(function(data) {
            // Add sidebar content
            if (data.sidebar.length > 0) {
                $('.search-results').html(data.sidebar);
            } else {
                $('.search-results').html('Aucun évènement trouvé');
            }
            $('.search-results').show();
            
            // Add markers to the map
            for (i = 0; i < data.mapMarkers.length; i++) {
                var latLng = new google.maps.LatLng(data.mapMarkers[i].lat, data.mapMarkers[i].lng);
                addMarker(latLng, data.mapMarkers[i].html, i+1);
            }
            
            // Center map
            centerMap(map);
        })
        .fail(function() {
        });

        // Click on sidebar event
        $('body.post-type-archive-agenda').on('click', '.sidebar-link', function(e){
            e.preventDefault();
            var id = $(this).attr('rel');
            if (id) {
                if(markers[id]){
                    map.panTo(markers[id].getPosition());
                    scrollToMap();
                    setTimeout('google.maps.event.trigger(markers[' + id + '], "click")', 500);
                }
            }
        });

        // Sumbmit search form
        $('body.post-type-archive-agenda').on('submit', '#search-form', function(e){
            e.preventDefault();
            deleteMarkers();
            var formData = $(this).serialize();
            $.ajax({
                url:      "<?php echo bloginfo('wpurl') ?>/ajax-agenda",
                type:     "POST",
                data:     formData,
                dataType: "JSON"
            })
            .done(function(data) {
                // Add sidebar content
                if (data.sidebar.length > 0) {
                    $('.search-results').html(data.sidebar);
                } else {
                    $('.search-results').html('Aucun évènement trouvé');
                }
                $('.search-results').show();
                
                // Add markers to the map
                for (i = 0; i < data.mapMarkers.length; i++) {
                    var latLng = new google.maps.LatLng(data.mapMarkers[i].lat, data.mapMarkers[i].lng);
                    addMarker(latLng, data.mapMarkers[i].html, i+1);
                }
                
                // Center map
                centerMap(map);
            })
            .fail(function() {
            });
            return false;
        });
        initialize();
    });
})(jQuery);
</script>
<div id="main" role="main" class="col-grid">
    <?php if( have_posts() ) : ?>
        <div class="span12 position-middle">
            <h1>Les Evènements</h1>
            <p>Une envie de sortie ? Une soirée de libre que vous souhaitez occuper ? <br />Utilisez le formulaire de recherche ci-dessous pour filtrer en fonction de vos envies, de la ville ou vous souhaitez trouver un évènement ou de la date.</p>
            <form action="" method="post" name="search-form" id="search-form">
                <div class="span3">
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
                </div>
                
                <div class="span3">     
                    <label>Lieu de l'événement :</label>
                    <input id="geocomplete" type="text" placeholder="Saisir une adresse" size="90" name="geocomplete"/>

                    <div class="hidden">
                        <input id="lat" name="lat" type="hidden" value="">
                        <input id="lng" name="lng" type="hidden" value="">
                        <input id="formatted_address" name="formatted_address" type="hidden" value="">
                    </div>
                </div>

                <script type="text/javascript">
                    jQuery(function(){
                        jQuery("#geocomplete").geocomplete({ details: "form" });
                        jQuery( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd'});
                    });
                </script>


                <div class="span3">
                    <label>Date: </label>
                        <input type="text" id="datepicker" name="datepicker">
                </div>
                <div class="span">            
                    <input type="submit" value="Lancer recherche" name="valider" class="button" />
                </div>

                <div class="span8">
                    <div id="acf-map">
                        <div class="acf-map-markers"></div>
                    </div>
                </div>
                
                <div class="search-results span" style="display: none;">
                    <h3>Les évènements à venir</h3>
                </div>

                <div id="main" role="main" class="masonry" style="display: none;">
                    <?php
                    $first    = true;
                    $query    = array('post_type' => 'agenda','order' => 'DESC');
                    $wp_query = new WP_Query($query);

                    while ($wp_query->have_posts()):$wp_query->the_post(); 
                        $address = get_field('adresse');
                        echo '<input type="hidden" name="event_lat[]" value="' . $address['lat'] . '" />';
                        echo '<input type="hidden" name="event_lng[]" value="' . $address['lng'] . '" />';
                        echo '<input type="hidden" name="post_id[]" value="' . $post->ID . '" />';
                    endwhile;

                    dw_paging_nav();
                    ?>
                </div>
            </form>
        </div>
        <div class="clearfix">
        </div>
            
        <?php dw_show_more_button(); ?>

    <?php else: ?>
        <?php get_template_part( 'content', 'none' ) ?>
    <?php endif; ?>
</div>

<?php get_footer(); ?>