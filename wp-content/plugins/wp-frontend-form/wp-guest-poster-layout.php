<?php
if(!function_exists('wpgp_one_columns_12_call')){
	function wpgp_one_columns_12_call($args, $content) {
		$html = '<div class="row-fluid show-grid"><div class="span12">'.do_shortcode($content).'</div></div>';
		return $html;	
	}
}
//============================ 8-4 ====================================
if(!function_exists('wpgp_two_columns_4_8_call')){
	function wpgp_two_columns_4_8_call($args, $content) {
		$html = '<div class="row-fluid show-grid">
			'.do_shortcode($content).'
		</div>';
		return $html;
	}
}
if(!function_exists('wpgp_two_columns_4_call')){
	function wpgp_two_columns_4_call($args, $content) {
		return '<div class="span4">'.do_shortcode($content).'</div>';
	}
}
if(!function_exists('wpgp_two_columns_8_call')){
	function wpgp_two_columns_8_call($args, $content) {
		return '<div class="span8">'.do_shortcode($content).'</div>';
	}
}
//====================================================================
if(!function_exists('wpgp_two_columns_6_6_call')){
	function wpgp_two_columns_6_6_call($args, $content) {
		$html = '<div class="row-fluid show-grid">
			'.do_shortcode($content).'
		</div>';
		return $html;		
	}
}
if(!function_exists('wpgp_two_columns_6_call')){
	function wpgp_two_columns_6_call($args, $content) {
		return '<div class="span6">'.do_shortcode($content).'</div>';
	}
}
if(!function_exists('wpgp_three_columns_4_4_4_call')){
	function wpgp_three_columns_4_4_4_call($args, $content) {
		$content = do_shortcode($content);
		$html = '<div class="row-fluid show-grid">
			'.$content.'
		</div>';
		return $html;
	}
}
if(!function_exists('wpgp_three_columns_4_call')){
	function wpgp_three_columns_4_call($args, $content) {
		$content = do_shortcode($content);
		return '<div class="span4">'.$content.'</div>';
	}
}







