<?php
/*
Template Name: Home
*/

global $paged, $block_class, $paged;

get_header(); 
$categories = get_the_category();
$category_id = $categories[0]->cat_ID;
?>
<div class="headline">
    <div class="headline-wrap">
        <header class="entry-header">
            <h2 class="entry-title"><?php echo $categories[0]->name;?></h2> 
        </header>
    </div>
</div>
<?php if( have_posts() ) : ?>
    <div id="main" role="main" class="masonry" >
        <article id="block-main" class="block w2 format-gallery" >
            <div class="block-inner">
                <div id="carousel-instagram" class="carousel slide">
                    <div class="carousel-inner">
                        <?php $first = true; ?>
                        <?php $sliderloop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 3, 'cat' => $category_id ) ); ?>
                        <?php if ($sliderloop->have_posts()) : ?>
                            <?php while ( $sliderloop->have_posts() ) : $sliderloop->the_post(); ?>
                               <div class="item <?php if ($first == true) : $first = false; echo 'active'; endif; ?>">
                                    <a target="_blank" href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?>
                                        <div class="carousel-caption">
                                            <h2><?php echo get_the_title(); ?> </h2>
                                            <p><?php the_excerpt(); ?></p>
                                        </div>
                                    </a>
                                </div>
                            <?php endwhile; ?>
                        <?php endif; ?>
                    </div>
                    <a class="carousel-control left" href="#carousel-instagram" data-slide="prev"><i class="icon-chevron-left"></i></a>
                    <a class="carousel-control right" href="#carousel-instagram" data-slide="next"><i class="icon-chevron-right"></i></a>
                </div>
            </div>
        </article>
        <article id="block-agenda" class="block w2" >
            <div class="block-inner">
                <h2 class="agenda-title">Evenements à venir</h2>
                <ul id="agenda">
                    <?php $loop = new WP_Query( array( 'post_type' => 'agenda', 'posts_per_page' => 7, 'meta_key' => 'date','orderby' => 'meta_value_num', 'order' => 'ASC' ,'cat' => $category_id) ); ?>

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
        <?php $listloop = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 2, 'cat' => $category_id, 'paged' => get_query_var( 'paged' ) ) ); ?>
        <?php //$i = 0; ?>
        <?php if ($listloop->have_posts()) : ?>
            <?php while ( $listloop->have_posts() ) : $listloop->the_post(); ?>
            <?php $i++; ?>
            <?php //if ($i > 3) : ?>
                <article id="post-<?php the_ID(); ?>" class="post-<?php the_ID(); ?> post type-post status-publish format-video hentry category-blog category-relax category-work tag-freelancing tag-workstation block grid-sizer">
                    <div class="block-inner">
                        <div class="view-video">
                            <?php if( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail() ?>
                            <?php endif; ?>
                            <div class="mask">
                                <a href="<?php the_permalink(); ?>" data-post-id="<?php the_ID(); ?>" class="info">
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
                <?php // endif; ?>
            <?php endwhile; ?>
            <?php dw_paging_nav(); ?>
        <?php endif; ?>   
    </div>
<?php endif; ?>
<?php get_footer(); ?>