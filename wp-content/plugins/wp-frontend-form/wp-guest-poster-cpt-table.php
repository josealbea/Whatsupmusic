<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_cpt_columns')){
	function wpo_poster_cpt_columns($columns) {
		$new_columns = array(
			'poster_pay'	=>	__('Poster Payment','wpo')
		);	
	    return array_merge($columns, $new_columns);
	}
	//add_filter('manage_edit-test_columns' , 'wpo_poster_cpt_columns');
}
