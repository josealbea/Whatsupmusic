<?php
/* 
* Template Name: Creation post
*/
get_header();
if( 'POST' == $_SERVER['REQUEST_METHOD'] && !empty( $_POST['action'] )) {
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
	wp_insert_post($post);	// http://codex.wordpress.org/Function_Reference/wp_insert_post
	wp_redirect( home_url() );
}



 
do_action('wp_insert_post', 'wp_insert_post');
?>
    <div class="single-page row-fluid background">
    	<h1>Proposition d'un article</h1>
		<div id="postbox">
			<form id="new_post" name="new_post" method="post" action="">

				<label for="title">Votre titre :</label>
				<input type="text" id="title" name="title" class="form-control" />

				<label for="description">Description de l'article</label>
				<textarea class="form-control" class="form-control" id="description" tabindex="3" name="description" rows="4"></textarea>

				<label for="">Votre catégorie :</label>
				<?php wp_dropdown_categories( 'tab_index=4&taxonomy=category&class=form-control '); ?>

				<label for="post_tags">Vos mots clés</label>	
				<input type="text" class="form-control" value="" name="post_tags" id="post_tags"/>

				<input type="submit" value="Proposer mon article" id="submit" name="submit" class="button"/>


				<input type="hidden" name="post_type" id="post_type" value="post" />
				<input type="hidden" name="action" value="post" />
				<?php wp_nonce_field( 'new-post' ); ?>
			</form>
		</div>
	<!--// Formulaire -->
	</div>
<?php get_footer(); ?>