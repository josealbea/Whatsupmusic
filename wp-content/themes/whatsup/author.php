<?php 
global $paged, $block_class, $paged;

get_header();   
?>  
<?php if( have_posts() ) : the_post(); ?>
    <div id="page-autor-left" class="headline span5">
        <div class="headline-wrap">
            <header class="entry-header">
		          <img class="couverture"src="http://lorempixel.com/582/300/sports/" alt="photo-couverture" width="" height=""/>
                  <img class="profil" src="http://lorempixel.com/150/150/sports/" alt="photo-couverture" width="" height=""/>
                  <p class="autor"><?php echo get_the_author(); ?></p>
		      
                <?php $author = get_current_user_id(); 
                      $current_author = get_user_by( 'slug', get_query_var( 'author_name' ) );
                      if ($current_author->ID == $author) : 
                        echo "<p class='edit-author'><a href='".home_url()."/editer-profil/' title='Editer mon profil'>Modifier mon profil</a></p>"; 
                      endif; ?>
                <div id="reseaux-sociaux">
                    <a href="#"><img src="<?php bloginfo('template_directory')?>/social/facebook.jpg" alt="" width="" height=""></a>
                    <a href="#"><img src="<?php bloginfo('template_directory')?>/social/twitter.jpg" alt="" width="" height=""></a>
                    <a href="#"><img src="<?php bloginfo('template_directory')?>/social/google.jpg" alt="" width="" height=""></a>
                    <a href="#"><img src="<?php bloginfo('template_directory')?>/social/youtube.jpg" alt="" width="" height=""></a>
                </div>
            </header>
        </div>
    </div>
<div id="page-autor-right" class="span11">
    <div id="main" role="main" class="masonry" >
        <?php $first = true; rewind_posts(); ?>
        <?php  while( have_posts() ) : the_post(); ?>
            <?php 
                $block_class = 'block';
                if( dw_is_featured_post() ) { 
                    $block_class .= ' format-aside';
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
</div>
    <?php dw_show_more_button(); ?>
<?php else: ?>
    <?php get_template_part( 'content', 'none' ) ?>
<?php endif; ?>
<?php get_footer(); ?>