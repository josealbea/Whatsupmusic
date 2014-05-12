<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_hook_notice_email')){
	function wpo_poster_hook_notice_email() {
		do_action('wpo_poster_hook_notice_email',$post_id);
	}
}
if(!function_exists('wpo_poster_hook_add_transactions')){
	function wpo_poster_hook_add_transactions() {
		do_action('wpo_poster_hook_add_transactions', $post_id);
	}
}
if(!function_exists('wpo_poster_verify_update_user_meta')){
	function wpo_poster_verify_update_user_meta($meta_id, $user_id, $meta_key, $meta_value) {
		if($meta_key==POSTER_USER_BALANCE){
			if(!current_user_can('add_users')){
				return false;
			}
			else{
				return true;	
			}
		}		
	}
	add_action('update_user_meta', 'wpo_poster_verify_update_user_meta',10,4);
	add_action('add_user_meta', 'wpo_poster_verify_update_user_meta',10,4);
	add_action('delete_user_meta', 'wpo_poster_verify_update_user_meta',10,4);
}