<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_user')){
	function wpo_poster_user($columns) {
		if( wpo_poster_get_enable_payment() !='yes' ) return $columns;
		$columns['balance']	=	__('Balance');
	 	return $columns;
	}
	add_filter('manage_users_columns', 'wpo_poster_user');
}
if(!function_exists('wpo_poster_user_call')){
	function wpo_poster_user_call($empty='', $column_name, $id) {
		switch ($column_name) {
			case 'balance':
				$balance = get_user_meta($id,POSTER_USER_BALANCE,true) ? get_user_meta($id,POSTER_USER_BALANCE,true) : 0;
				return '$'. $balance;
			break;
		}
	}
	add_action('manage_users_custom_column', 'wpo_poster_user_call', 10, 3);
}