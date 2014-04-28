<?php  
?>
			<footer class="site-footer" role="contentinfo">
				<small>
				<?php _e('Copyright &copy; 2014 par','dw') ?> <a href="#">What's Up music.</a> 
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