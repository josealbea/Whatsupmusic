<?php
/* 
* Template Name: Creation post
*/
get_header();
if( 'POST' == $_SERVER['REQUEST_METHOD'] && !empty( $_POST['action'] )) {
	require_once (ABSPATH.'/wp-admin/includes/media.php');
	require_once (ABSPATH.'/wp-admin/includes/file.php');
	require_once (ABSPATH.'/wp-admin/includes/image.php');
	// Validation du contenu
	if (isset ($_POST['title'])) {
		$title =  $_POST['title'];
	} else {
		echo 'Merci de mettre un titre';
	}
	if (isset ($_POST['description'])) {
		$description = $_POST['description'];
	} else {
		echo 'Merci d\'entrer du contenu';
	}
	$tags = $_POST['post_tags'];
	// Ajout du contenu
	$post = array(
		'post_title'	=> $title,
		'post_content'	=> $description,
		'post_category'	=> array($_POST['cat']),
		'tags_input'	=> $tags,
		'post_status'	=> 'pending',
		'tax_input'		=> array( 'category' => array($_POST['cat']), )
	);
	$post_ID = wp_insert_post($post);	// http://codex.wordpress.org/Function_Reference/wp_insert_post


if (isset( $_POST['featured_nonce'], $post_ID ) && wp_verify_nonce( $_POST['featured_nonce'], 'featured' ) && current_user_can( 'edit_post', $post_ID )) {
	$attachment_id = media_handle_upload( 'featured', $post_ID );
	if ( is_wp_error( $attachment_id ) ) {
		echo "Une erreur s'est produite lors de l'upload";
	} else {
		set_post_thumbnail($post_ID, $attachment_id);
		echo "c'est parfait";
	}
} else {
	echo "probleme de verification";
}
	
	header('Location: http://www.google.fr/');
}



 
do_action('wp_insert_post', 'wp_insert_post');
?>
    <div class="single-page row-fluid background">
    	<h1>Proposition d'un article</h1>
		<div id="postbox">
			<?php 
				if ( have_posts() ) {
					while ( have_posts() ) {
						the_post(); 
						the_content();
					}
				}
			?>
		</div>
	<!--// Formulaire -->
	</div>
<?php get_footer(); ?>