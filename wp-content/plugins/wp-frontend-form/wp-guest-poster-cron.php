<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_add_intervals')){
	function wpo_poster_add_intervals($schedules){
		$schedules['5p'] = array(
			'interval' => 300,
			'display' => __('5 minutes')
		);
		$schedules['10p'] = array(
			'interval' => 600,
			'display' => __('10 minutes')
		);
		$schedules['15p'] = array(
			'interval' => 900,
			'display' => __('15 minutes')
		);
		$schedules['30p'] = array(
			'interval' => 1800,
			'display' => __('30 minutes')
		);
		return $schedules;
	}
	add_filter( 'cron_schedules', 'wpo_poster_add_intervals');
}
if(!function_exists('wpo_poster_clear_reject_articles')){
	function wpo_poster_clear_reject_articles() {
		if( !wp_next_scheduled('wpo_poster_clear_reject_articles') ){
			wp_schedule_event(time(), wpo_poster_get_schedule_erase_rejected_articles(), 'wpo_poster_clear_reject_articles');
		}		
	}
	add_action('init', 'wpo_poster_clear_reject_articles');
}
if(!function_exists('wpo_poster_clear_reject_articles_act')){
	function wpo_poster_clear_reject_articles_act() {
		if( wpo_poster_get_erase_rejected_articles()=='no' ) return;
		else{
			$posts = get_posts(array(
				'post_status'	=>	'draft',
				'meta_key'	=>	'wp-guest-poster-status',
				'meta_value'	=>	'wp_guest_poster'
			));
			if($posts){
				foreach ($posts as $post){
					wp_delete_post($post->ID, true);
				}
			}			
		}
	}
	add_action('wpo_poster_clear_reject_articles', 'wpo_poster_clear_reject_articles_act');
}
		