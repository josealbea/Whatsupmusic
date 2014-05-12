<?php
/*
Template Name: Connexion
*/
$user = wp_get_current_user();
if($user->ID != 0){
    wp_redirect( home_url() );
}get_header();?>

    <div class="single">
        <div class="post background">
            <h1><?php the_title(); ?></h1>
            <?php 
                if ( have_posts() ) {
                    while ( have_posts() ) {
                        the_post(); 
                        the_content();
                    }
                }
            ?>
        </div>
    </div>

<?php get_footer(); ?>
