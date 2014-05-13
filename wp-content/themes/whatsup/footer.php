			<footer class="site-footer" role="contentinfo">
				<small>
				<?php //_e('Copyright &copy; 2014 par','dw') ?>
				<div class="footer_1">
					<?php wp_nav_menu( array( 'theme_location' => 'footer_1') );  ?>
				</div>
				<div class="footer_logo">
					<?php dw_fixel_logo() ?>
				</div>
				<div class="footer_2">
					<?php wp_nav_menu( array( 'theme_location' => 'footer_2') );  ?>
				</div>
				</small>
			</footer>
			<?php get_sidebar('top'); ?>
		</div>
	</div>
	<?php if( is_home() || is_archive() || is_search() ) : ?>
		<?php get_template_part('modal') ?>
	<?php endif; ?>
	<a id="back-to-top" class="scrollup" href="#"><i class="icon-chevron-up"></i></a>
	<?php wp_footer(); ?>
</body>
</html>