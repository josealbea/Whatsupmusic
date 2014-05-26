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
	$postId  = $_POST['post_id'][$i];

    if ($latitude != '' && !empty($latitude) && $_POST['event_lng'] != '' && !empty($_POST['event_lng'])) {
		$dateQuery   = '';
		$eventsQuery = array();
    	if (isset($_POST['datepicker']) && !empty($_POST['datepicker'])) {
    		$dateQuery = $wpdb->get_results('SELECT PM.meta_value FROM wp_postmeta PM WHERE PM.meta_key = "date" AND DATE(PM.meta_value) = DATE("' . $_POST['datepicker'] . '") AND PM.post_id = ' . $postId);
    		if (count($dateQuery)) {
	    		$eventsQuery = $wpdb->get_results('SELECT PM.post_id, ROUND(6353 * 2 * ASIN(SQRT(POWER(SIN((' . $lat .' - abs(' . $latitude . ')) * pi()/180 / 2),2) + COS(' . $lat . ' * pi()/180 ) * COS( abs(' . $latitude . ') *  pi()/180) * POWER(SIN((' . $lng . ' - ' . $_POST['event_lng'][$i] . ') *  pi()/180 / 2), 2) )), 2) as distance
		                                            FROM wp_posts P 
		                                            INNER JOIN wp_postmeta PM ON P.id = PM.post_id 
		                                            WHERE PM.post_id = ' . $postId . '
		                                            AND P.post_type = "agenda"
		                                            AND PM.meta_key = "adresse";');
	    	}
    	} else {
    		$eventsQuery = $wpdb->get_results('SELECT PM.post_id, ROUND(6353 * 2 * ASIN(SQRT(POWER(SIN((' . $lat .' - abs(' . $latitude . ')) * pi()/180 / 2),2) + COS(' . $lat . ' * pi()/180 ) * COS( abs(' . $latitude . ') *  pi()/180) * POWER(SIN((' . $lng . ' - ' . $_POST['event_lng'][$i] . ') *  pi()/180 / 2), 2) )), 2) as distance
	                                            FROM wp_posts P 
	                                            INNER JOIN wp_postmeta PM ON P.id = PM.post_id 
	                                            WHERE PM.post_id = ' . $postId . '
	                                            AND P.post_type = "agenda"
	                                            AND PM.meta_key = "adresse";');
    	}
        
        foreach ($eventsQuery as $event) {
            if ($event->distance < 10) {
                $eventInfos = $wpdb->get_results('SELECT PM.post_id, PM.meta_key, PM.meta_value 
                                                    FROM wp_posts P 
                                                    INNER JOIN wp_postmeta PM ON P.id = PM.post_id 
                                                    WHERE PM.post_id = ' . $postId . '
                                                    AND P.post_type = "agenda"
                                                    AND (PM.meta_key = "date" OR PM.meta_key = "adresse" OR PM.meta_key = "titre");');
                if (!isset($events[$i])) {
                    $events[$postId] = array();
                }
                foreach ($eventInfos as $info) {
                    if ($info->meta_key == 'date') {
                        $events[$postId]['date'] = $info->meta_value;
                    } else if ($info->meta_key == 'adresse') {
                        $events[$postId]['address'] = unserialize($info->meta_value);
                    } else if ($info->meta_key == 'titre') {
                    	$events[$postId]['title'] = $info->meta_value;
                    }
                }
                $events[$postId]['distance'] = $event->distance;
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
    	// Set markers lat and lng
		$mapMarkers[$i]['lat']  = $event['address']['lat'];
		$mapMarkers[$i]['lng']  = $event['address']['lng'];
		$mapMarkers[$i]['html'] = '<div class="event-title">' . $event['title'] . '</div><div class="event-address">' . $event['address']['address'] . '</div><div class="event-distance">' . $event['distance'] . '</div>';
        // Construct sidebar HTML
        $sidebar .= '<a href="#" rel="' . $i . '" class="sidebar-link">';
	        $sidebar .= '<div class="sidebar-event">';
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
