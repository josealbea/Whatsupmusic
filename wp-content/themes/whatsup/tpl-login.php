<?php
/*
Template Name: Connexion
*/
$user = wp_get_current_user();
if($user->ID != 0){
    wp_redirect( home_url() );
}
get_header();
?>

<div class="single">
    <div class="post background">
        <h1><?php the_title(); ?></h1>
        <div class="btn-connect">
            <a href="http://localhost/WhatsUpMusic/wp-login.php?loginFacebook=1&redirect=http://localhost/WhatsUpMusic" onclick="window.location = 'http://localhost/WhatsUpMusic/wp-login.php?loginFacebook=1&redirect='+window.location.href; return false;">
                <div class="new-fb-btn new-fb-1 new-fb-default-anim"><div class="new-fb-1-1"><div class="new-fb-1-1-1">FACEBOOK</div></div></div>
            </a>
            <a href="http://localhost/WhatsUpMusic/wp-login.php?loginTwitter=1&redirect=http://localhost/WhatsUpMusic" onclick="window.location = 'http://localhost/WhatsUpMusic/wp-login.php?loginTwitter=1&redirect='+window.location.href; return false;">
                <div class="new-twitter-btn new-twitter-1 new-twitter-default-anim"><div class="new-twitter-1-1"><div class="new-twitter-1-1-1">TWITTER</div></div></div>
            </a>
        </div>
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
