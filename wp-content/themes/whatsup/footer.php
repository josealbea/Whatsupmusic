			<?php get_sidebar('top'); ?>
		</div>
	</div>
						<footer class="site-footer" role="contentinfo">
				<div class="span3"><?php dw_fixel_logo() ?></div>
				<div class="span3"><?php dynamic_sidebar( 'Footer 1' ); ?> </div>
				<div class="span3"><?php dynamic_sidebar( 'Footer 2' ); ?> </div>
				<div class="span3"><?php wp_nav_menu( array( 'theme_location' => 'footer_1') );  ?></div>
			</footer>
	<?php if( is_home() || is_archive() || is_search() ) : ?>
		<?php get_template_part('modal') ?>
	<?php endif; ?>
	<a id="back-to-top" class="scrollup" href="#"><i class="icon-chevron-up"></i></a>
	<?php wp_footer(); ?>
</body>
</html>