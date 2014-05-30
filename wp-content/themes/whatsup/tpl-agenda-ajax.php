<?php
/* 
* Template Name: Ajax-Agenda
*/
$events = array();
$i      = 0;

// Get latitude and longitude
if (isset($_POST['geocomplete']) && !empty($_POST['geocomplete'])) {
	$geocode = file_get_contents('http://maps.google.com/maps/api/geocode/json?address=' . urlencode($_POST['geocomplete']) . '&sensor=false');
	$output  = json_decode($geocode);
	// Get latitude
    if (isset($_POST['lat']) && !empty($_POST['lat'])) {
    	$lat = $_POST['lat'];
	} else {
		$lat = $output->results[0]->geometry->location->lat;
	}
	// Get longitude
	if (isset($_POST['lng']) && !empty($_POST['lng'])) {
    	$lng = $_POST['lng'];
	} else {
		$lng = $output->results[0]->geometry->location->lng;
	}
}
// Get every event info
foreach ($_POST['event_lat'] as $latitude) {
    if ($latitude != '' && !empty($latitude) && $_POST['event_lng'] != '' && !empty($_POST['event_lng'])) {
        $postId   = $_POST['post_id'][$i];
        $continue = true;
        // Check event type
        if (isset($_POST['cats']) && strtolower($_POST['cats']) != strtolower("Non classé")) {
            $terms = get_the_terms($postId, 'category' );
            if ($terms && ! is_wp_error($terms)) {
                $term_slugs_arr = array();
                foreach ($terms as $term) {
                    $term_slugs_arr[] = $term->slug;
                }
                $terms_slug_str = join( " ", $term_slugs_arr);
            }
            if (strtolower($terms_slug_str) != strtolower($_POST['cats'])) {
                $continue = false;
            }
        }

        // If the event type matches, we get the event
        if ($continue == true) {
            // Prepare query string for date
            $dateQuery     = '';
            $eventsQuery   = array();
            $distanceQuery = false;
            if (isset($_POST['datepicker']) && !empty($_POST['datepicker'])) {
                $dateQuery = 'AND (SELECT DATE(PM.meta_value) as pm_date FROM wp_postmeta PM WHERE PM.post_id = ' . $postId . ' AND PM.meta_key = "date") = DATE("' . $_POST['datepicker'] . '")';
            }

            $eventInfos = $wpdb->get_results('SELECT PM.post_id, PM.meta_key, PM.meta_value 
                                                FROM wp_posts P 
                                                INNER JOIN wp_postmeta PM ON P.id = PM.post_id 
                                                WHERE PM.post_id = ' . $postId . '
                                                AND P.post_type = "agenda"
                                                ' . $dateQuery . '
                                                AND (SELECT DATE(PM.meta_value) as pm_date
                                                        FROM wp_postmeta PM
                                                        WHERE PM.post_id = ' . $postId . '
                                                        AND PM.meta_key = "date") >= NOW()');
            if ($lat && $lng) {
                $distanceQuery = $wpdb->get_row('SELECT PM.post_id, ROUND(6353 * 2 * ASIN(SQRT(POWER(SIN((' . $lat .' - abs(' . $latitude . ')) * pi()/180 / 2),2) + COS(' . $lat . ' * pi()/180 ) * COS( abs(' . $latitude . ') *  pi()/180) * POWER(SIN((' . $lng . ' - ' . $_POST['event_lng'][$i] . ') *  pi()/180 / 2), 2) )), 2) as distance
                                                    FROM wp_posts P 
                                                    INNER JOIN wp_postmeta PM ON P.id = PM.post_id 
                                                    WHERE PM.post_id = ' . $postId . '
                                                    AND P.post_type = "agenda"
                                                    AND PM.meta_key = "adresse";');
            }
            
            foreach ($eventInfos as $info) {
                if ($distanceQuery && $distanceQuery->distance < 10) {
                    $events[$postId]['distance'] = $distanceQuery->distance;
                }
                if (!$distanceQuery || $distanceQuery->distance < 10) {
                    if (!isset($events[$postId])) {
                        $events[$postId] = array();
                    }

                    if ($info->meta_key == 'date') {
                        $events[$postId]['date'] = $info->meta_value;
                    } else if ($info->meta_key == 'adresse') {
                        $events[$postId]['address'] = unserialize($info->meta_value);
                    } else if ($info->meta_key == 'titre') {
                    	$events[$postId]['title'] = $info->meta_value;
                    }
                    $events[$postId]['id'] = $postId;

                }
            }
        }
    }
    $i++;
}
?>

<?php
$mapMarkers = array();
$sidebar    = '';
$i          = 0;
foreach ($events as $event) {
    if ($event['address']['lat'] != "" && $event['address']['lng'] != "") {
        $post = get_post($event['id']);
    	// Set markers lat and lng
		$mapMarkers[$i]['lat']  = $event['address']['lat'];
		$mapMarkers[$i]['lng']  = $event['address']['lng'];
		$mapMarkers[$i]['html'] = '<div class="event-title">' . $event['title'] . '</div><div class="event-address">' . $event['address']['address'] . '</div><div class="event-distance">' . $event['distance'] . '</div>';
        // Construct sidebar HTML
        $sidebar .= '<a href="'.get_permalink().'" rel="' . $i . '" class="sidebar-link">';
	        $sidebar .= '<div class="sidebar-event">';
                $sidebar .= '<div class="event-thumb">' . get_the_post_thumbnail($event['id'], 'thumbnail') . '</div>';
	        	$sidebar .= '<div class="event-number">' . ($i+1) . '</div>';
	        	$sidebar .= '<div class="event-title">' . $event['title'] . '</div>';
		        $sidebar .= '<div class="event-address">' . $event['address']['address'] . '</div>';
		        $sidebar .= '<div class="event-distance">' . $event['distance'] . '</div>';
		    $sidebar .= '</div>';
		$sidebar .= '</a>';
        $i++;
    }
}
header('Content-Type: application/json');
echo json_encode(array('mapMarkers' => $mapMarkers, 'sidebar' => $sidebar));
?>
