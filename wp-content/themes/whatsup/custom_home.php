<?php
/*
Template Name: Home
*/

global $paged, $block_class, $paged, $wpdb;

get_header(); 
?>  
<?php if( have_posts() ) : ?>
    <?php  while( have_posts() ) : the_post(); ?>
    <div id="main" role="main" class="masonry" >
        <article id="block-main" class="block w2 format-gallery" >
            <div class="block-inner">
                <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                    <?php $first = true; ?>
                    <?php while (has_sub_field('slider', 'option')) : ?>
                        <?php $post_object = get_sub_field('article'); ?>
                        <?php $post = $post_object; ?>
                        <?php if ($post) : ?>
                        <?php setup_postdata($post_object); ?>
                           <div class="item <?php if ($first == true) : $first = false; echo 'active'; endif; ?>">
                                <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('slider-thumb'); ?>
                                <div class="carousel-caption">
                                    <h2><?php echo get_the_title(); ?> </h2>
                                    <p><?php the_excerpt(); ?></p>
                                </div>
                                </a>
                            </div>
                            <?php wp_reset_postdata(); ?>
                        <?php endif; ?>
                    <?php endwhile; ?>
                </div>
                <a class="carousel-control left" href="#myCarousel" data-slide="prev"><i class="icon-chevron-left"> </i></a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="icon-chevron-right"> </i></a>
            </div>
            </div>
        </article>
        <article id="block-agenda" class="block w2" >
            <div class="block-inner">
                <h2 class="agenda-title">Evenements à venir</h2><a class="goto-allevents" href="<?php echo bloginfo('wpurl'); ?>/agenda">Tous les évènements</a>
                <ul id="agenda">
                    <?php $loop = new WP_Query( array( 'post_type' => 'agenda', 'posts_per_page' => 7, 'meta_key' => 'date','orderby' => 'meta_value_num', 'order' => 'ASC' ) ); ?>

                <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <?php $image = get_field('image'); ?>
                    <?php if (strtotime(get_field('date')) >= mktime() ) : ?>
                        <a href="<?php the_permalink(); ?>">
                            <li>
                            <div class="desc-agenda">
                                <span class="event-title">
                                    <?php the_field('titre'); ?>
                                </span>
                                <span class="event-where">
                                    <?php the_field('lieu'); ?>
                                </span>
                            </div>
                            <div class="image-agenda">
                                <img src="<?php echo $image['sizes']['agenda-thumb']; ?>" style="width: 100% !important; left: 0 !important; height: 110px !important;" />
                                <div class="agenda-date"><?php echo date("d/m", strtotime(get_field('date'))); ?></div>
                            </div>
                        </li>
                        </a>
                    <?php endif; ?>
                <?php endwhile; ?>
                </ul>
            </div>
        </article>
        <?php $loop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 1, 'cat' => '3' ) ); ?>
        <?php if ($loop->have_posts()) : ?>
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
                    <div class="block-inner">
                        <div class="view-video">
                            <?php if( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail() ?>
                            <?php endif; ?>
                            <div class="mask">
                                <a href="<?php the_permalink(); ?>" class="info">
                                    <div class="mask-content">
                                        <h2 class="block-title">Musique :<br /><?php the_title(); ?></h2>
                                        <span class="line"></span>
                                        <div class="block-meta">
                                            <?php printf(' <span class="date"><i class="icon-time"></i> <time pubdate datetime="%s">%s</time></span>',
                                            get_day_link( get_the_time('Y'), get_the_time('m'), get_the_time('d') ),
                                            get_the_date()
                                            ); ?>    
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>     
            <?php endwhile; ?>
        <?php endif; ?>
        <?php $loop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 1, 'cat' => '4' ) ); ?>
        <?php if ($loop->have_posts()) : ?>
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
                    <div class="block-inner">
                        <div class="view-video">
                            <?php if( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail() ?>
                            <?php endif; ?>
                            <div class="mask">
                                <a href="<?php the_permalink(); ?>" class="info">
                                    <div class="mask-content">
                                        <h2 class="block-title">Mode : <br /><?php the_title(); ?></h2>
                                        <span class="line"></span>
                                        <div class="block-meta">
                                            <?php printf(' <span class="date"><i class="icon-time"></i> <time pubdate datetime="%s">%s</time></span>',
                                            get_day_link( get_the_time('Y'), get_the_time('m'), get_the_time('d') ),
                                            get_the_date()
                                            ); ?>    
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>   
            <?php endwhile; ?>
        <?php endif; ?>  
         <?php 
            // recupere année et mois courrant
            $today = date("Y-m"); 
            $results = $wpdb->get_results(
                'SELECT post_id, post_title, post_date, post_name, date_time, MAX( value ) AS like_count
				FROM wp_wti_like_post L, wp_posts P
				WHERE L.post_id = P.ID
				AND post_type = "lookbook"
				AND value = (
				SELECT max( value )
				FROM wp_wti_like_post )
				AND post_status = "publish"
                AND post_date LIKE "%'.$today.'%"
                AND post_status = "publish"');
            ?> 
            <article id="post-<?php $results[0]->post_id; ?>" class="block w2">
                <div class="block-inner">
                    <div class="view-video">
                           <a href="<?php home_url();?><?php echo $results[0]->post_name;?>/" class="info"><?php echo get_the_post_thumbnail($results[0]->post_id,'slider-thumb'); ?></a>
                        <div class="mask">
                            <a href="<?php home_url();?><?php echo $results[0]->post_name;?>/" class="info">
                                <div class="mask-content">
                                    <h2 class="block-title"><?php echo $results[0]->post_title;?></h2>
                                    <h3 class="line">Lookbook du mois avec <?php echo $results[0]->like_count;?> Likes</h3>
                                    <?php 
                                        $date_i  = $results[0]->post_date;
                                        $date_f = explode("-",$date_i,4);
                                        $date = preg_split("/[\s-]+/", $date_f[2]); 
                                    ?>
                                    <p><?php echo "Publié le ".$date[0]."/".$date_f[1]."/".$date_f[0];?></p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </article> 
        <?php $loop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 1, 'cat' => '5' ) ); ?>
        <?php if ($loop->have_posts()) : ?>
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
                    <div class="block-inner">
                        <div class="view-video">
                            <?php if( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail() ?>
                            <?php endif; ?>
                            <div class="mask">
                                <a href="<?php the_permalink(); ?>" class="info">
                                    <div class="mask-content">
                                        <h2 class="block-title">Art : <br /><?php the_title(); ?></h2>
                                        <span class="line"></span>
                                        <div class="block-meta">
                                            <?php printf(' <span class="date"><i class="icon-time"></i> <time pubdate datetime="%s">%s</time></span>',
                                            get_day_link( get_the_time('Y'), get_the_time('m'), get_the_time('d') ),
                                            get_the_date()
                                            ); ?>    
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>    
            <?php endwhile; ?>
        <?php endif; ?> 
        <?php $loop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 1, 'cat' => '6' ) ); ?>
        <?php if ($loop->have_posts()) : ?>
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
                    <div class="block-inner">
                        <div class="view-video">
                            <?php if( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail() ?>
                            <?php endif; ?>
                            <div class="mask">
                                <a href="<?php the_permalink(); ?>" class="info">
                                    <div class="mask-content">
                                        <h2 class="block-title">Cinéma : <br /><?php the_title(); ?></h2>
                                        <span class="line"></span>
                                        <div class="block-meta">
                                            <?php printf(' <span class="date"><i class="icon-time"></i> <time pubdate datetime="%s">%s</time></span>',
                                            get_day_link( get_the_time('Y'), get_the_time('m'), get_the_time('d') ),
                                            get_the_date()
                                            ); ?>    
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>     
            <?php endwhile; ?>
        <?php endif; ?>
        <article id="block-social-facebook" class="block grid-sizer format-image" style="position: absolute; left: 851px; top: 62px;">
            <div class="block-inner" style="height: 282px;">
                <div class="view-social">
                    <a href="https://www.facebook.com/pages/Whats-Up-Rock-Family/138037362906184">
                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/fb.png" style="max-height: none; width: 100%; top: 0px;">
                    </a>
                </div>
            </div>
        </article>
        <?php $loop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 1, 'cat' => '7' ) ); ?>
        <?php if ($loop->have_posts()) : ?>
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
                    <div class="block-inner">
                        <div class="view-video">
                            <?php if( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail() ?>
                            <?php endif; ?>
                            <div class="mask">
                                <a href="<?php the_permalink(); ?>" class="info">
                                    <div class="mask-content">
                                        <h2 class="block-title">Geek :<br /><?php the_title(); ?></h2>
                                        <span class="line"></span>
                                        <div class="block-meta">
                                            <?php printf(' <span class="date"><i class="icon-time"></i> <time pubdate datetime="%s">%s</time></span>',
                                            get_day_link( get_the_time('Y'), get_the_time('m'), get_the_time('d') ),
                                            get_the_date()
                                            ); ?>    
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>   
            <?php endwhile; ?>
        <?php endif; ?>  
        <article id="block-social-twitter" class="block grid-sizer format-image" data-post-id="183" style="position: absolute; left: 900px; top: 1320px;">
            <div class="block-inner" style="height: 298px;">
                <div class="view-social">
                    <a href="">
                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/tw.png" style="max-height: none; width: 100%; top: 0px;">
                    </a>
                </div>
            </div>
        </article>
        <?php $loop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 1, 'cat' => '11' ) ); ?>
        <?php if ($loop->have_posts()) : ?>
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
                    <div class="block-inner">
                        <div class="view-video">
                            <?php if( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail() ?>
                            <?php endif; ?>
                            <div class="mask">
                                <a href="<?php the_permalink(); ?>" class="info">
                                    <div class="mask-content">
                                        <h2 class="block-title">Sport :<br /><?php the_title(); ?></h2>
                                        <span class="line"></span>
                                        <div class="block-meta">
                                            <?php printf(' <span class="date"><i class="icon-time"></i> <time pubdate datetime="%s">%s</time></span>',
                                            get_day_link( get_the_time('Y'), get_the_time('m'), get_the_time('d') ),
                                            get_the_date()
                                            ); ?>    
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article> 
            <?php endwhile; ?>
        <?php endif; ?> 
        <?php
        // Récuparation du post qui a le plus de like
        /*
        $mostLikedPost = $wpdb->get_row('SELECT L.post_id, COUNT(L.id) as like_count, U.ID as author_id, U.display_name AS author
                                            FROM wp_wti_like_post L
                                            INNER JOIN wp_posts P ON P.ID = L.post_id
                                            INNER JOIN wp_users U ON U.ID = P.post_author
                                            GROUP BY L.post_id
                                            LIMIT 1;');
        */
        $postsLikes = $wpdb->get_results('SELECT COUNT(L.id) as like_count, U.ID as author_id, U.display_name AS author, L.post_id as post_id, P.post_name, P.post_title, P.post_date
                                            FROM wp_wti_like_post L
                                            INNER JOIN wp_posts P ON P.ID = L.post_id
                                            INNER JOIN wp_users U ON U.ID = P.post_author
                                            WHERE EXTRACT(MONTH from NOW()) = EXTRACT(MONTH from L.date_time)
                                            GROUP BY L.post_id;');
        $mostLikedPost = array();
        foreach ($postsLikes as $postLike) {
            if (!isset($mostLikedPost['like_count']) || $mostLikedPost['like_count'] < $postLike->like_count) {
                $mostLikedPost['like_count'] = $postLike->like_count;
                $mostLikedPost['author_id']  = $postLike->author_id;
                $mostLikedPost['author']     = $postLike->author;
                $mostLikedPost['post_id']    = $postLike->post_id;
                $mostLikedPost['post_title']    = $postLike->post_title;
                $mostLikedPost['post_name']    = $postLike->post_name;
                $mostLikedPost['post_date']    = $postLike->post_date;
            }
        }

        // Récupération de l'auteur qui a le plus de like (à partir de la requête précédente)
        /*
        $mostLikedAutor = $wpdb->get_row('SELECT L.post_id, COUNT(p.id) AS post_count, DATE_FORMAT(post_date, "%Y-%m") post_month, post_author
                            FROM wp_wti_like_post L
                            INNER JOIN `wp_posts` p ON p.ID = L.post_id
                            INNER JOIN `wp_users` u ON u.ID = L.user_id
                            WHERE post_status = "publish"
                            AND post_type = "post"
                            AND post_author = "' . $mostLikedPost->author_id . '"
                            GROUP BY post_author, post_month
                            ORDER BY post_count DESC;');
        */
        $mostLikedAutor = $wpdb->get_row('SELECT MAX(like_count) as total_likes, author_id, author
                                            FROM (SELECT COUNT(L.id) as like_count, U.ID as author_id, U.display_name AS author
                                                    FROM wp_wti_like_post L
                                                    INNER JOIN wp_posts P ON P.ID = L.post_id
                                                    INNER JOIN wp_users U ON U.ID = P.post_author
                                                    GROUP BY U.ID) AS best_author;');
        ?>
        <article id="post-<?php $results[0]->post_id; ?>" class="auteur post-<?php $results[0]->post_id; ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
            <div class="block-inner">
                <?php $user_info = get_userdata($mostLikedAutor->author_id);?>
                <div class="view-video">
                       <?php echo get_avatar($mostLikedAutor->author_id, 512); ?>
                    <div class="mask">
                        <a href="<?php bloginfo('url');?>/author/<?php echo $user_info->data->user_login;?>/" class="info">
                            <div class="mask-content">
                                <h2 class="block-title"><?php echo $mostLikedAutor->author;?></h2>
                                <h3 class="line">Auteur du mois avec <?php echo $mostLikedAutor->total_likes;?> Likes</h3>
                                <a href="">Voir son profil</a>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </article>
        <?php 
        // recupere année et mois courrant
        // $today = date("Y-m"); 
        // $results = $wpdb->get_results(
        //     'SELECT post_id, MAX(value) AS like_count, post_title, post_date, post_name, date_time
        //     FROM wp_wti_like_post L, wp_posts P
        //     WHERE L.post_id = P.ID
        //     AND post_date LIKE "%'.$today.'%"
        //     AND post_status = "publish"');
        ?> 
        <article id="post-<?php $mostLikedPost['post_id']; ?>" class="post-<?php $mostLikedPost['post_id']; ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
            <div class="block-inner">
                <div class="view-video">
                       <?php echo get_the_post_thumbnail($mostLikedPost['post_id'],'large'); ?>
                    <div class="mask">
                        <a href="<?php home_url();?><?php echo $mostLikedPost['post_name'];?>/" class="info">
                            <div class="mask-content">
                                <h2 class="block-title"><?php echo $mostLikedPost['post_title'];?></h2>
                                <h3 class="line">Article du mois avec <?php echo $mostLikedPost['like_count'];?> Likes</h3>
                                <div class="block-meta">
                                    <?php 
                                    // $date_i  = $results[0]->post_date;
                                    // $date_f = explode("-",$date_i,4);
                                    // $date = preg_split("/[\s-]+/", $date_f[2]);
                                    echo "Publié le " . date('d/m/Y', strtotime($mostLikedPost['post_date']));
                                    ?>    
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </article> 
        <?php // affiche les 12 derniers articles
            $args = array(
            	'posts_per_page' => 12,
            	'post_status' => 'publish',
            	'post_type' => 'post',
            	'order' => 'DESC',
				'orderby' => 'date', 
            	);
            $the_query = new WP_Query( $args );
			if ( $the_query->have_posts() ) :
				while ( $the_query->have_posts() ) : $the_query->the_post();?>
	                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
	                    <div class="block-inner">
	                        <div class="view-video">
	                            <?php if( has_post_thumbnail() ) : ?>
	                                <?php the_post_thumbnail() ?>
	                            <?php endif; ?>
	                            <div class="mask">
	                                <a href="<?php the_permalink(); ?>" class="info">
	                                    <div class="mask-content">
	                                        <h2 class="block-title"><?php the_title(); ?></h2>
	                                        <span class="line"></span>
	                                        <div class="block-meta">
	                                            <?php printf(' <span class="date"><i class="icon-time"></i> <time pubdate datetime="%s">%s</time></span>',
	                                            get_day_link( get_the_time('Y'), get_the_time('m'), get_the_time('d') ),
	                                            get_the_date()
	                                            ); ?>    
	                                        </div>
	                                    </div>
	                                </a>
	                            </div>
	                        </div>
	                    </div>
	                </article>
            	<?php   
        		endwhile;
			endif;
		wp_reset_postdata();
		?>	
    </div>
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>