<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_register_cpt_transaction')){
	function wpo_poster_register_cpt_transaction() {
		if( wpo_poster_get_enable_payment()=='yes' ):
			register_post_type('poster-transactions', array(	'label' => 'Transactions','description' => '','public' => true,'show_ui' => true,'show_in_menu' => true,'capability_type' => 'post','hierarchical' => false,'rewrite' => array('slug' => ''),'query_var' => true,'exclude_from_search' => false,'supports' => array('title',),'labels' => array (
			  'name' => 'Transactions',
			  'singular_name' => 'Transactions',
			  'menu_name' => 'Transactions',
			  'add_new' => 'Add Transactions',
			  'add_new_item' => 'Add New Transactions',
			  'edit' => 'Edit',
			  'edit_item' => 'Edit Transactions',
			  'new_item' => 'New Transactions',
			  'view' => 'View Transactions',
			  'view_item' => 'View Transactions',
			  'search_items' => 'Search Transactions',
			  'not_found' => 'No Transactions Found',
			  'not_found_in_trash' => 'No Transactions Found in Trash',
			  'parent' => 'Parent Transactions',
			),
			'menu_icon'	=>	plugin_dir_url(__FILE__) . 'img/transactions.png'
			) );		
		endif;
	}
	add_action('init', 'wpo_poster_register_cpt_transaction');	
}