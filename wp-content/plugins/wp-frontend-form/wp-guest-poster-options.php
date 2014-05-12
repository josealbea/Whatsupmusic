<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_define_status')){
	function wpo_poster_define_status($type='post') {
		if($type=='post'){
			return array(
				'pending' => 'Pending',
				'publish'	=>	'Publish'
			);			
		}
		else{
			return array(
				'no' => 'No',
				'yes'	=>	'Yes'
			);
		}
	}
}
if(!function_exists('wpo_poster_is_guest_poster')){
	function wpo_poster_is_guest_poster($post_id) {
		if( get_post_meta($post_id,'wp-guest-poster-status',true)=='wp_guest_poster' ){
			return true;
		}
		return false;
	}
}
if( !function_exists('wpo_poster_get_post_status') ){
	function wpo_poster_get_post_status() {
		return get_option('wpo_poster_post_status') ? get_option('wpo_poster_post_status') : 'pending';
	}
}
if(!function_exists('wpo_poster_get_allow_guest_posting')){
	function wpo_poster_get_allow_guest_posting() {
		return get_option('wpo_poster_allow_guest_posting') ? get_option('wpo_poster_allow_guest_posting') : 'no'; 
	}
}
if(!function_exists('wpo_poster_get_display_media_button')){
	function wpo_poster_get_display_media_button() {
		return get_option('wpo_poster_display_media_button') ? get_option('wpo_poster_display_media_button') : 'no';
	}
}
if(!function_exists('wpo_poster_get_upload_featured_img')){
	function wpo_poster_get_upload_featured_img() {
		return get_option('wpo_poster_upload_featured_img') ? get_option('wpo_poster_upload_featured_img') : 'yes';
	}
}
if(!function_exists('wpo_poster_get_recaptcha')){
	function wpo_poster_get_recaptcha() {
		return get_option('wpo_poster_recaptcha') ? get_option('wpo_poster_recaptcha') : 'no';
	}
}
if(!function_exists('wpo_poster_get_listingpage_show')){
	function wpo_poster_get_listingpage_show() {
		return (int)get_option('wpo_poster_listingpage_show') ? (int)get_option('wpo_poster_listingpage_show') : 10;
	}
}
if(!function_exists('wpo_poster_get_recaptcha_private_key')){
	function wpo_poster_get_recaptcha_private_key() {
		return get_option('wpo_poster_recaptcha_private_key') ? get_option('wpo_poster_recaptcha_private_key') : '';
	}
}
if(!function_exists('wpo_poster_get_recaptcha_publish_key')){
	function wpo_poster_get_recaptcha_publish_key() {
		return get_option('wpo_poster_recaptcha_publish_key') ? get_option('wpo_poster_recaptcha_publish_key') : '';
	}
}
if(!function_exists('wpo_poster_get_erase_rejected_articles')){
	function wpo_poster_get_erase_rejected_articles() {
		return get_option('wpo_poster_erase_rejected_articles') ? get_option('wpo_poster_erase_rejected_articles') : 'no';
	}
}
if(!function_exists('wpo_poster_get_schedule_erase_rejected_articles')){
	function wpo_poster_get_schedule_erase_rejected_articles() {
		return get_option('wpo_poster_schedule_erase_rejected_articles') ? get_option('wpo_poster_schedule_erase_rejected_articles') : 'daily';
	}
}
if(!function_exists('wpo_poster_get_enable_payment')){
	function wpo_poster_get_enable_payment() {
		return get_option('wpo_poster_enable_payment') ? get_option('wpo_poster_enable_payment') : 'no'; 
	}
}
if(!function_exists('wpo_poster_get_currency')){
	function wpo_poster_get_currency() {
		return get_option('wpo_poster_currency') ? get_option('wpo_poster_currency') : 'USD'; 
	}
}
if(!function_exists('wpo_poster_get_cost_per_article')){
	function wpo_poster_get_cost_per_article() {
		return (int)get_option('wpo_poster_cost_per_article') ? (int)get_option('wpo_poster_cost_per_article') : 0;
	}
}
if(!function_exists('wpo_poster_get_withdrawal_minimum')){
	function wpo_poster_get_withdrawal_minimum() {
		return (int)get_option('wpo_poster_withdrawal_minimum') ? (int)get_option('wpo_poster_withdrawal_minimum') : '50';
	}
	
}
if(!function_exists('wpo_poster_get_paypal_account')){
	function wpo_poster_get_paypal_account() {
		return get_option('wpo_poster_paypal_account') ? get_option('wpo_poster_paypal_account') : get_bloginfo('admin_email');
	}
}
if(!function_exists('wpo_poster_get_payment_notice')){
	function wpo_poster_get_payment_notice() {
		return get_option('wpo_poster_payment_notice') ? get_option('wpo_poster_payment_notice') : ''; 
	}
}
if(!function_exists('wpo_poster_get_articles_rejected')){
	function wpo_poster_get_articles_rejected() {
		return get_option('wpo_poster_articles_rejected') ? get_option('wpo_poster_articles_rejected') : 'yes'; 
	}
}
if(!function_exists('wpo_poster_get_articles_rejected_subject')){
	function wpo_poster_get_articles_rejected_subject() {
		return get_option('wpo_poster_articles_rejected_subject') ? get_option('wpo_poster_articles_rejected_subject') : __('Your articles rejected','wpo');
	}
}
if(!function_exists('wpo_poster_get_messages_rejected')){
	function wpo_poster_get_messages_rejected() {
		return get_option('wpo_poster_messages_rejected') ? get_option('wpo_poster_messages_rejected') : '';
	}
}
if(!function_exists('wpo_poster_get_articles_approve')){
	function wpo_poster_get_articles_approve() {
		return get_option('wpo_poster_articles_approve') ? get_option('wpo_poster_articles_approve') : 'yes'; 
	}
}
if(!function_exists('wpo_poster_get_articles_approve_subject')){
	function wpo_poster_get_articles_approve_subject() {
		return get_option('wpo_poster_articles_approve_subject') ? get_option('wpo_poster_articles_approve_subject') : __('Congratulation! Your articles approved','wpo');
	}
}
if(!function_exists('wpo_poster_get_messages_approve')){
	function wpo_poster_get_messages_approve() {
		return get_option('wpo_poster_messages_approve') ? get_option('wpo_poster_messages_approve') : '';
	}
}
if(!function_exists('wpo_poster_get_email_sender_name')){
	function wpo_poster_get_email_sender_name() {
		return get_option('wpo_poster_email_sender_name') ? get_option('wpo_poster_email_sender_name') : get_bloginfo('name');
	}
}
if(!function_exists('wpo_poster_get_email_sender_email')){
	function wpo_poster_get_email_sender_email() {
		return get_option('wpo_poster_email_sender_email') ? get_option('wpo_poster_email_sender_email') : get_bloginfo('admin_email');
	}
}
if(!function_exists('wpo_poster_email_sender_test')){
	function wpo_poster_email_sender_test() {
		return get_option('wpo_poster_email_sender_test') ? get_option('wpo_poster_email_sender_test') : get_bloginfo('admin_email');
	}
}
if( !function_exists('wpo_poster_get_taxname_from_termid') ){
	function wpo_poster_get_taxname_from_termid($term_id) {
		global $wpdb;
		$query = $wpdb->get_var("SELECT `taxonomy` FROM $wpdb->term_taxonomy WHERE $term_id = `term_id`");
		return $query;
	}
}
if(!function_exists('wpo_poster_save_settings')){
	function wpo_poster_save_settings() {
		if( wp_verify_nonce($_POST['wpo_poster_save_change'],'wpo_poster_save_change_act') ){
			if( trim( $_POST['wpo_poster_schedule_erase_rejected_articles'] ) != wpo_poster_get_schedule_erase_rejected_articles() ){
				wp_clear_scheduled_hook('wpo_poster_clear_reject_articles');
			}
			foreach ($_POST as $k=>$v){
				update_option($k, $v);
			}
			
			return __('Save changes!','wpo');
		}
	}
	//add_action('init', 'wpo_poster_save_settings');
}
















