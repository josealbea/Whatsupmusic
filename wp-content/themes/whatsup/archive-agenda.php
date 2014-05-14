<?php 
global $paged, $block_class, $paged, $wpdb;
get_header(); 
?>

<script type="text/javascript">
(function($) {
    function render_map($el) {
        var $markers = $el.find('.marker');

        var latlng = new google.maps.LatLng(46.779231, 6.659431);
        
        var args = {
            zoom        : 19,
            center      : latlng,
            mapTypeId   : google.maps.MapTypeId.ROADMAP
        };
        
        var map = new google.maps.Map( $el[0], args);
        
        map.markers = [];
        
        $markers.each(function(){ 
            add_marker( $(this), map ); 
        });

        center_map(map); 
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
    }

    $(document).ready(function(){ 
        $('.acf-map').each(function(){
            render_map($(this));
        });
    });
})(jQuery);
</script>

<h1>Les Agendas</h1>

<?php if( have_posts() ) : ?>
    <form action="" method="post">
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
        <input id="geocomplete" type="text" placeholder="Type in an address" size="90" name="geocomplete"/>

        <div class="hidden">
            <label for="origine_lat">Latitude:</label>   <input id="lat" name="lat" type="hidden" value="">
            <label for="origine_lng">Longitude:</label>  <input id="lng" name="lng" type="hidden" value="">
            <label for="formated_address">Address:</label>    <input id="formatted_address" name="formatted_address" type="hidden" value="">
        </div>

        <script type="text/javascript">
            jQuery(function(){
                jQuery("#geocomplete").geocomplete({ details: "form" });
            });
        </script>
                
        <script>
            jQuery(function() {
                jQuery( "#datepicker" ).datepicker({});
            });
        </script>
        
        <p>Date: <input type="text" id="datepicker" name="datepicker"></p>            
        <input type="submit" value="Lancer recherche" name="valider" class="button" />


        <?php if (empty($_POST['valider'])) { ?>

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
        <?php } ?>
    </form>
    <?php if (!empty($_POST['valider'])) {
        /*echo '<div style="background: #FFF;">';
            echo '<pre>'; var_dump($_POST); echo '<pre>';
        echo '</div>';*/
    ?>
        <style>
            .acf-map{ width: 70%; height: 430px; border: #ccc solid 1px; margin: 20px auto; }
        </style>
            <?php
            $events = array();
            $i      = 0;
            foreach ($_POST['event_lat'] as $latitude) {
                $postId = $_POST['post_id'][$i];
                if ($latitude != '' && !empty($latitude) && $_POST['event_lng'] != '' && !empty($_POST['event_lng'])) {
                    $eventsQuery = $wpdb->get_results('SELECT ROUND(6353 * 2 * ASIN(SQRT(POWER(SIN((' . $_POST['lat'] .' - abs(' . $latitude . ')) * pi()/180 / 2),2) + COS(' . $_POST['lat'] . ' * pi()/180 ) * COS( abs(' . $latitude . ') *  pi()/180) * POWER(SIN((' . $_POST['lng'] . ' - ' . $_POST['event_lng'][$i] . ') *  pi()/180 / 2), 2) )), 2) as distance
                                                        FROM wp_posts P 
                                                        INNER JOIN wp_postmeta PM ON P.id = PM.post_id 
                                                        WHERE PM.post_id = ' . $postId . '
                                                        AND P.post_type = "agenda"
                                                        AND PM.meta_key = "adresse";');
                    foreach ($eventsQuery as $event) {
                        //echo '<pre>'; var_dump($event->post_id); var_dump($event->distance); echo '</pre>';
                        if ($event->distance < 10) {
                            $eventInfos = $wpdb->get_results('SELECT PM.post_id, PM.meta_key, PM.meta_value 
                                                                FROM wp_posts P 
                                                                INNER JOIN wp_postmeta PM ON P.id = PM.post_id 
                                                                WHERE PM.post_id = ' . $postId . '
                                                                AND P.post_type = "agenda"
                                                                AND (PM.meta_key = "date" OR PM.meta_key = "adresse");');
                            //echo '<pre>'; var_dump($eventInfos); echo '</pre>';
                            if (!isset($events[$i])) {
                                $events[$postId] = array();
                            }
                            foreach ($eventInfos as $info) {
                                if ($info->meta_key == 'date') {
                                    $events[$postId]['date'] = $info->meta_value;
                                } else if ($info->meta_key == 'adresse') {
                                    $events[$postId]['address'] = unserialize($info->meta_value);
                                }
                            }
                            $events[$postId]['distance'] = $event->distance;
                        }
                    }
                }
                $i++;
            }
            //echo '<pre>'; var_dump($events); echo '</pre>';
            //echo '<div class="marker" data-lat="' . $event['address']['lat'] . '" data-lng="' . $event['address']['lat'] . '"></div>';
            ?>
        <div class="acf-map">
            <?php
            foreach ($events as $event) {
                if ($event['address']['lat'] != "" && $event['address']['lng'] != "") {
                    echo '<div class="marker" data-lat="' . $event['address']['lat'] . '" data-lng="' . $event['address']['lng'] . '"></div>';
                }
            }
            ?>
        </div>
        <?php
        /*
        $form_region = $_POST['region'];
        $form_secteurs_activites = $_POST['secteurs_detudes'];
        $form_niveau_formation = $_POST['niveau_dacces'];
        $recherche = $_POST['recherche'];

        if($form_region == 'Régions' && $form_secteurs_activites == 'Secteurs' && $form_niveau_formation == 'Niveau' && $recherche == ''){
            echo 'Veuillez remplir au moins un champs';

        }
        elseif($recherche != ''){
                $args = array(
                'post_type' => 'fiche_etablissement',
                's' => $recherche
         );
        }
        else{

         
        $args = array(
            'numberposts' => -1,
            'post_type' => 'fiche_etablissement',
            'meta_query' => array(
                'relation' => 'OR',
                array(
                    'key' => 'region',
                    'value' => $form_region,
                    'compare' => '='
                ),
                array(
                    'key' => 'secteurs_detudes',
                    'value' => $form_secteurs_activites,
                    'compare' => 'LIKE'
                ),
                array(
                    'key' => 'niveau_dacces',
                    'value' => $form_niveau_formation,
                    'compare' => 'LIKE'
                )
            )
        );
        }
        // get results
        $the_query = new WP_Query( $args );
        ?>
        <?php if( $the_query->have_posts() ): ?>
            <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

            <div id="main" role="main" class="masonry" >
                <?php $first = true; ?>
                <?php $query       = array('post_type' => 'agenda','posts_per_page' => 15,'order' => 'DESC');
                $wp_query = new WP_Query($query);
                while ($wp_query->have_posts()):$wp_query->the_post(); 
                        $block_class = 'block';
                        if( dw_is_featured_post() ) { 
                            $block_class .= ' w2';
                        } 
                        if ( $first && ! dw_is_featured_post() ) {
                            $first = false;
                            $block_class .= ' grid-sizer';
                        }
                    ?>
                    <?php get_template_part( 'content', get_post_format() ); ?>
                <?php endwhile; ?>
                <?php dw_paging_nav(); ?>
            </div>
            <?php endwhile; ?>
        <?php endif;*/
        } ?>
        
        <?php dw_show_more_button(); ?>
<?php else: ?>
    <?php get_template_part( 'content', 'none' ) ?>
<?php endif; ?>
<?php get_footer(); ?>