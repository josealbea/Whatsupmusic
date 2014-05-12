<?php
/**
 * Plugin Name: WP FrontEnd Form
 * Version: 3.3
 * Author: Toan Nguyen
 * Author URI: http://wpoffice.net/about-us/
 * Plugin URI: http://wpoffice.net/wp-frontend-form-multi-purpose-posting-form/
 * Description: Use to create new post from Front-End. Compatible with CPT, Post meta.
 */
error_reporting(0);
define('POSTER_USER_BALANCE', 'poster_user_balance');
if(!function_exists('wpo_poster_load_lang')){
	function wpo_poster_load_lang() {
		load_plugin_textdomain('wpo',false,dirname( plugin_basename( __FILE__ ) ) . '/lang'); 
	}
	add_action('plugins_loaded', 'wpo_poster_load_lang');
}
### check before active
if( !function_exists('wpo_poster_active') ){
	function wpo_poster_active() {
		global $wp_version;
		if( version_compare($wp_version, '3.4', '<') ){
			exit('The plugin required Wordpress 3.4 or higher');
		}
	}
	register_activation_hook(__FILE__, 'wpo_poster_active');
}
include 'functions.php';
include 'wp-guest-poster-shortcode.php';
include 'wp-guest-poster-layout.php';
include 'wp-guest-poster-cpt.php';
include 'wp-guest-poster-ajax.php';
include 'wp-guest-poster-options.php';
include 'wp-guest-poster-admin.php';
include 'wp-guest-poster-meta.php';
include 'wp-guest-poster-hooks.php';
include 'wp-guest-poster-debug.php';
include 'wp-guest-poster-cron.php';
include 'wp-guest-poster-widget.php';
include 'wp-guest-poster-trans-table.php';
include 'wp-guest-poster-cpt-table.php';
include 'wp-guest-poster-user.php';
include 'WPO_Shortcode_Tag.php';

if(!function_exists('wpo_poster_load_recaptcha')){
	function wpo_poster_load_recaptcha() {
		if(!function_exists('_recaptcha_qsencode')){
			include 'classes/recaptchalib.php';
		}		
	}
	add_action('init', 'wpo_poster_load_recaptcha', 100);
}
if(!function_exists('wpo_poster_editor_style')){
	function wpo_poster_editor_style($mce_css) {
	    $mce_css .= ', ' . plugins_url( 'css/editor-style.css', __FILE__ );
	    return $mce_css;
	}
	add_filter('mce_css', 'wpo_poster_editor_style');
}
if(!function_exists('wpo_poster_add_js')){
	function wpo_poster_add_js() {
		wp_enqueue_script('jquery-ui-datepicker');
		wp_enqueue_script('jquery-datetime-picker', plugin_dir_url(__FILE__) . 'libs/datimepicker/datetimepicker_css.js');
		wp_enqueue_script('jqueryform','http://malsup.github.io/jquery.form.js');
		### enqueue fancy
		wp_enqueue_script('fancy-js', plugin_dir_url(__FILE__) . 'fancy/jquery.fancybox.js');
		wp_enqueue_style('fancy-css', plugin_dir_url(__FILE__) . 'fancy/jquery.fancybox.css');
		wp_enqueue_script('', plugin_dir_url(__FILE__) . 'js/jquery.mousewheel-3.0.6.pack.js');
		echo '
			<script>		
				var wpo_poster_ajax_url = "'.get_bloginfo(url).'/wp-admin/admin-ajax.php";
				var wpo_poster_plugin_url = "'.plugin_dir_url(__FILE__).'";
			</script>			
		';
		wp_enqueue_script('jquery.multiselect.js',plugin_dir_url(__FILE__) . 'js/jquery.multiselect.js');
		wp_enqueue_script('script.js',plugin_dir_url(__FILE__) . 'js/script.js');		
	}
	add_action('wp_footer', 'wpo_poster_add_js');
}

if(!function_exists('wpo_poster_add_css')){
	function wpo_poster_add_css() {
		wp_enqueue_style('jquery.multiselect.css',plugin_dir_url(__FILE__) . 'css/jquery.multiselect.css');
		wp_enqueue_style('wp-guest-poster.css',plugin_dir_url(__FILE__) . 'css/style.css');
	}
	add_action('wp_footer', 'wpo_poster_add_css');
}
if(!function_exists('wpo_poster_add_js_admin')){
	function wpo_poster_add_js_admin() {
		echo '
			<script>		
				var wpo_poster_form_icon = "'.plugin_dir_url(__FILE__).'img/form_icon.png";
				var wpo_poster_plugin_url = "'.plugin_dir_url(__FILE__).'";
			</script>			
		';		
		wp_enqueue_script('scrip-admin.js', plugin_dir_url(__FILE__) . 'js/scrip-admin.js');
	}	
	add_action('admin_footer', 'wpo_poster_add_js_admin');
}