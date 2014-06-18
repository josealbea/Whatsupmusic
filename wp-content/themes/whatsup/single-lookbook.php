<?php
/*
Template Name: Page d'un lookbook
*/

get_header();
?>
<div id="main" role="main">
    <div class="single-page row-fluid">
        <div class="modal-buttons modal-nav">
            <?php $next = get_next_post();?>
            <button data-post-id="<?php the_ID(); ?>" <?php echo ! empty($next) ? ' data-href="'.get_permalink( $next->ID ).'" title="'.htmlentities($next->post_title).'"' : ''; ?> type="button" class="left next-post <?php echo empty($next) ? 'hide' : ''; ?>"><i class="icon-chevron-left"></i></button>
            <?php $prev = get_previous_post(); ?>
            <button data-post-id="<?php the_ID() ?>" <?php echo ! empty($prev) ? 'data-href="'.get_permalink( $prev->ID ).'"  title="'.htmlentities($prev->post_title).'"' : ''; ?> type="button" class="right prev-post <?php echo empty($prev) ? 'hide' : ''; ?>"><i class="icon-chevron-right"></i></button>
        </div>
        <div class="social-bar">
            <ul>
                <?php $url = get_permalink(); ?>
                <li><a href="#"><i class="icon-eye-open"></i>&nbsp;<span><?php echo do_shortcode('[post_view]'); ?></span></a></li>
                <li><span><?php echo $wti_like_post; ?></span></li>
                <li><a class="home" href="" title="Whats's Up ?!"><i class="icon-home"></i><span>Accueil</span></a></li>
                <li><a class="facebook" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo rawurlencode($url); ?>" title="<?php _e('Publier sur Facebook','dw') ?>" target='_blank'><i class="icon-facebook"></i><span><?php echo dw_get_facebook_count( $url ) ?></span></a></li>
                <li><a class="twitter" href="https://twitter.com/intent/tweet?source=webclient&amp;text=<?php echo get_the_title() . rawurlencode( $url ) ?>" title="<?php _e('Publier sur Twitter','dw') ?>"  target='_blank'><i class="icon-twitter"></i><span><?php echo dw_get_twitter_count( $url ); ?></span></a></li>
                <li><a class="googleplus" href="https://plus.google.com/share?url=<?php echo rawurlencode($url ); ?>" title="<?php _e('Publier sur Google+','dw') ?>" target='_blank'><i class="icon-google-plus"></i><span><?php echo dw_get_plusones_share_count( $url ) ?></span></a></li>
                <li><a href="#comments" class="comment" title="<?php _e('Commenter cet article','dw') ?>"><i class="icon-comment"></i><span><?php comments_number( '0', '1', '%') ?></span></a></li>
                <li><a class="email" href="mailto:?Subject=<?php echo rawurlencode( get_the_title() ) ?>" title="<?php _e('Envoyer cet article par e-mail','dw') ?>"><i class="icon-envelope-alt"></i></a></li>
                <li><a class="print" href="javascript: window.print();" title="<?php _e('Imprimer cet article','dw') ?>"><i class="icon-print"></i></a></li>
            </ul>
        </div>
        <div class="single-detail">
            <div class="scroller">
                <div class="main-content">
                	<div class="single-detail">
                		<div style="float:right">
                			<?php echo get_the_post_thumbnail( $postlike->post_id, 'medium'); ?>
                		</div>
            <div class="scroller">
                <div class="main-content span12">
                    <?php get_template_part('content','single'); ?>
                    <div id="author-meta">
                        <div class="row">
                            <div class="span4">
                                <h4>A propos de l'auteur :  <?php the_author_posts_link(); ?></h4>
                            </div>
                            <div class="span12">
                                <?php echo get_avatar( get_the_author_id() , 100 ); ?>
                            </div>
                            <div class="span12">
                                <p><?php the_author_description(); ?></p>
                            </div>
                            <div class="span12">
                                <p><?php the_author_posts_link(); ?> a écrit <?php the_author_posts(); ?> articles sur <a href="<?php echo bloginfo('wpurl'); ?>">What's Up Music</a>.</p>
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
                            </div>
                             <div class="span12">
                             	<h4>Ses 5 derniers lookbook</h4>
                             	
								<?php
								$id_auteur = get_the_author_id();
								$args = array( 
									'numberposts' => 5, 
									'order'=> 'ASC',
									'post_type' => 'lookbook', 
									'orderby' => 'date', 
									'author' => $id_auteur
								);
								$postslist = get_posts( $args );
								foreach ($postslist as $post) :  setup_postdata($post);
								?> 
									<div class="last_post post-<?php echo $post->ID; ?>">
										<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
											<p><?php echo get_the_post_thumbnail($post->ID, 'thumbnail'); ?></p>
											<p><?php the_title(); ?></p>
										</a>
									</div>
								<?php endforeach; ?>
                             </div>
                             <div class="span12">
                             	<h4> Ses lookbooks les plus likés</h4>
                             	<?php $pluslikes = $wpdb->get_results('SELECT L.post_id, COUNT( L.id ) AS like_count, U.ID AS author_id, U.display_name AS author
																		FROM wp_wti_like_post L
																		INNER JOIN wp_posts P ON P.ID = L.post_id
																		INNER JOIN wp_users U ON U.ID = P.post_author
																		WHERE U.ID = '.$id_auteur.'
																		GROUP BY L.post_id
																		LIMIT 5');
                             	if(empty($pluslikes)){
                             		echo 'L\'auteur n\'a pas encore d\'articles likés';
                             	}else{
                             		foreach ($pluslikes as $postlike) {
                             	?>
	                             		<div class="liked_post post-<?php echo $postlike->post_id; ?>">
											<a href="<?php echo get_permalink($postlike->post_id); ?>" title="<?php the_title(); ?>">
												<p><?php echo get_the_post_thumbnail( $postlike->post_id, 'thumbnail'); ?></p>
												<p><?php echo get_the_title($postlike->post_id); ?></p>
												<p>Avec <?php echo $postlike->like_count;?> Likes</p>
											</a>
										</div>
								<?php
									}
                             	}
								?>
                             </div>
                        </div>
                    </div>
                    <?php wp_link_pages( array( 'before' => '<div class="page-links">' . __( 'Pages:', 'dw' ), 'after' => '</div>' ) ); ?>
                    <?php comments_template(); ?>
                </div>
                <?php // get_sidebar(); ?>
            </div>
        </div>
				</div>
                <?php get_sidebar(); ?>
            </div>
        </div>
    </div>
</div>


<?php get_footer(); ?>