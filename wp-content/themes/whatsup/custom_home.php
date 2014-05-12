<?php
/*
Template Name: Home
*/

global $paged, $block_class, $paged;

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
                                <a target="_blank" href="<?php the_permalink(); ?>"><?php the_post_thumbnail('slider-thumb'); ?>
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
                <h2 class="agenda-title">Evenements à venir</h2>
                <ul id="agenda">
                    <?php $loop = new WP_Query( array( 'post_type' => 'agenda', 'posts_per_page' => 7, 'meta_key' => 'date','orderby' => 'meta_value_num', 'order' => 'ASC' ) ); ?>

                <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                <?php $image = get_field('image'); ?>
                    <?php if (strtotime(get_field('date')) >= mktime() ) : ?>
                        <li>
                            <div class="desc-agenda">
                                <span class="event-title">
                                    <?php the_field('titre'); ?>
                                </span>
                                <span class="event-where">
                                    <?php the_field('lieu'); ?>
                                </span>
                                <span class="event-more">
                                    <a href="<?php the_permalink(); ?>">Plus d'infos sur cet évènement</a>
                                </span>
                            </div>
                            <div class="image-agenda">
                                <img src="<?php echo $image['sizes']['agenda-thumb']; ?>" style="width: 100% !important; left: 0 !important; height: 110px !important;" />
                                <div class="agenda-date"><?php echo date("d/m", strtotime(get_field('date'))); ?></div>
                            </div>
                        </li>
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
                                <a href="<?php the_permalink(); ?>" data-toggle="modal" data-post-id="<?php the_ID(); ?>" class="info">
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
                                <a href="<?php the_permalink(); ?>" data-toggle="modal" data-post-id="<?php the_ID(); ?>" class="info">
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
        <article id="block-lookbook" class="block w2 format-gallery" >
            <div class="block-inner">
                <div id="carousel-instagram" class="carousel slide">
                    <div class="carousel-inner">
                        <?php $first = true; ?>
                        <?php while (has_sub_field('slider', 'option')) : ?>
                            <?php $post_object = get_sub_field('article'); ?>
                            <?php if ($post_object) : ?>
                            <?php setup_postdata($post_object); ?>
                               <div class="item <?php if ($first == true) : $first = false; echo 'active'; endif; ?>">
                                    <a target="_blank" href="<?php the_permalink(); ?>"><img src="http://distilleryimage4.s3.amazonaws.com/6a67e0cebf5211e3997b0002c9d36120_6.jpg"></a>
                                    <div class="carousel-caption">
                                        <h2><?php echo get_the_title(); ?> </h2>
                                        <p><?php the_excerpt(); ?></p>
                                    </div>
                                </div>
                                <?php wp_reset_postdata(); ?>
                            <?php endif; ?>
                        <?php endwhile; ?>
                    </div>
                    <a class="carousel-control left" href="#carousel-instagram" data-slide="prev"><i class="icon-chevron-left"></i></a>
                    <a class="carousel-control right" href="#carousel-instagram" data-slide="next"><i class="icon-chevron-right"></i></a>
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
                                <a href="<?php the_permalink(); ?>" data-toggle="modal" data-post-id="<?php the_ID(); ?>" class="info">
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
                                <a href="<?php the_permalink(); ?>" data-toggle="modal" data-post-id="<?php the_ID(); ?>" class="info">
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
                                <a href="<?php the_permalink(); ?>" data-toggle="modal" data-post-id="<?php the_ID(); ?>" class="info">
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
                                <a href="<?php the_permalink(); ?>" data-toggle="modal" data-post-id="<?php the_ID(); ?>" class="info">
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
    </div>
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>