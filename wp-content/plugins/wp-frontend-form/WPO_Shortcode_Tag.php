<?php
if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

class WPO_Shortcode_Tag{
	function __construct(){
		add_action( 'admin_init', array( $this, 'action_admin_init' ) );
	}
	function action_admin_init() {
		if ( current_user_can( 'edit_posts' ) ) {
			add_filter( 'mce_buttons', array( $this, 'filter_mce_button' ) );
			add_filter( 'mce_external_plugins', array( $this, 'filter_mce_plugin' ) );
		}		
	}
	function filter_mce_button( $buttons ) {
		array_push( $buttons, '|', 'guest_poster_button' );
		array_push( $buttons, '|', 'wpgp_one_columns_12' );
		array_push( $buttons, '|', 'wpgp_two_columns_4_8' );
		array_push( $buttons, '|', 'wpgp_two_columns_6_6' );
		array_push( $buttons, '|', 'wpgp_three_columns_4_4_4' );
		
		return $buttons;		
	}
	function filter_mce_plugin( $plugins  ) {
		$plugins['myguest_poster'] = plugin_dir_url( __FILE__ ) . 'js/myguest_poster_plugin.js';
		$plugins['wpgp_one_columns_12'] = plugin_dir_url( __FILE__ ) . 'js/myguest_poster_plugin_layout.js';
		$plugins['wpgp_two_columns_4_8'] = plugin_dir_url( __FILE__ ) . 'js/myguest_poster_plugin_layout.js';
		$plugins['wpgp_two_columns_6_6'] = plugin_dir_url( __FILE__ ) . 'js/myguest_poster_plugin_layout.js';
		$plugins['wpgp_three_columns_4_4_4'] = plugin_dir_url( __FILE__ ) . 'js/myguest_poster_plugin_layout.js';
		return $plugins;		
	}
}
$guest_poster = new WPO_Shortcode_Tag();