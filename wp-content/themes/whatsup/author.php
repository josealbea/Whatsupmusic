<?php 
global $paged, $block_class, $paged;

get_header(); 

$author = get_current_user_id(); 
$current_author = get_user_by( 'slug', get_query_var( 'author_name' ) );
$post_id = $post->ID;
?> 
    <div class="col-grid">
    <div id="page-autor-left" class="headline col-2">
        <div class="headline-wrap">
            <header class="entry-header">
                <div class="infos">
                    <?php if (get_user_meta(get_the_author_id(),'cover',true)) { ?>
                        <?php echo wp_get_attachment_image(get_user_meta(get_the_author_id(),'cover',true),'cover-thumb');
                    } else { ?>
                            <img class="couverture"src="http://lorempixel.com/582/300/sports/" alt="photo-couverture" width="" height=""/>
                    <?php } ?>
                  <div class="profil"><?php echo get_avatar($author, 512); ?></div>
                    <div class="infos_user">
                        <p class="autor"><?php echo get_the_author(); ?></p>
                            <?php
                              if ($current_author->ID == $author) : 
                                echo "<p class='edit-author'><i class='icon-user'></i> <a href='".home_url()."/editer-profil/' title='Editer mon profil'>Modifier mon profil </a></p>";
                                echo "<p class='edit-author'><i class='icon-list'></i> <a href='".home_url()."/liste-article/' title='Editer mes articles'>Mes articles</a> & <a href='".home_url()."/liste-lookbooks/' title='Editer mes lookbook'>Mes lookbooks</a></p>";  
                              endif; ?>
                    </div>
                </div>
                <div id="author-info">
                    <?php if (get_user_meta(get_the_author_id(),'facebook',true)) { ?>
                    <a class="fb_link" href="<?php echo get_user_meta(get_the_author_id(),'facebook',true); ?>" title="<?php _e('Voir sa page Facebook','dw') ?>" target='_blank'><i class="icon-facebook"></i></a>
                    <?php } if (get_user_meta(get_the_author_id(),'twitter',true)) { ?>
                    <a class="twitter_link" href="<?php echo get_user_meta(get_the_author_id(),'twitter',true); ?>" title="<?php _e('Voir sa page Twitter','dw') ?>" target='_blank'><i class="icon-twitter"></i></a>
                    <?php } if (get_user_meta(get_the_author_id(),'googleplus',true)) { ?>
                    <a class="googleplus_link" href="<?php echo get_user_meta(get_the_author_id(),'googleplus',true); ?>" title="<?php _e('Voir sa page Google Plus','dw') ?>" target='_blank'><i class="icon-google-plus"></i></a>
                    <?php } if (get_the_author_meta('user_url')) { ?>
                        <a class="website_link" href="<?php echo get_the_author_meta('user_url'); ?>" title="<?php _e('Voir son site','dw') ?>" target='_blank'><i class="icon-link"></i></a>
                    <?php } ?>
                </div>
            </header>
        </div>
    </div> 
<div id="page-autor-right" class="col-2">
    <div id="main" role="main" class="masonry" >
<?php if( have_posts() ) : the_post(); ?>
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
    <?php dw_show_more_button(); ?>
<?php else: ?>
    <!-- Ici mettre le message si aucun article n'a été rédigé par cet auteur. -->
    <h2>Cet auteur n'a posté aucun article pour le moment</h2>
    <?php // get_template_part( 'content', 'none' ) ?>
<?php endif; ?>
    </div>
</div>
<?php get_footer(); ?>