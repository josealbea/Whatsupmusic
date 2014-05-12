<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_metabox_messages')){
	function wpo_poster_metabox_messages() {
		global $post;
		if( get_post_meta($post->ID,'wp-guest-poster-status',true) =='wp_guest_poster' ){
			if( wpo_poster_get_enable_payment()=='yes' && get_post_status($post->ID)!='draft' ):
				add_meta_box('wpo_poster_messages', __('Messages for Author','wpo'), 'wpo_poster_metabox_messages_call','','side','high',null);
				add_meta_box('wpo_poster_post_info', __('Post Infomations','wpo'), 'wpo_poster_post_info_call','','side','high',NULL);
				add_meta_box('wpo_poster_payment_info', __('Payment','wpo'), 'wpo_poster_payment_info_call','','side','high',NULL);
			endif;
			
		}
		if(get_post_type($post->ID)=='poster-transactions'){
			add_meta_box('wpo_poster_transactions_info', __('Poster Transactions Info','wpo'), 'wpo_poster_transactions_info_call','','normal','high');
		}
	}
	add_action( 'add_meta_boxes', 'wpo_poster_metabox_messages' );
}
if(!function_exists('wpo_poster_metabox_messages_call')){
	function wpo_poster_metabox_messages_call(){
		global $post;
		$html = '
			  <div class="control-group">
			    <div class="controls">
			      <textarea name="wp_poster_messages" style="width: 100%;height: 100px;" placeholder="'.__('Write something else for response to this Author!').'">'.get_post_meta($post->ID,'wp_poster_messages',true).'</textarea>
			    </div>
			  </div>
		';
		echo $html;
	}
}
if(!function_exists('wpo_poster_metabox_messages_call_save')){
	function wpo_poster_metabox_messages_call_save($post_id) {
		if(current_user_can('add_users')){
			if( get_post_meta($post_id,'wp-guest-poster-status',true) == 'wp_guest_poster' ){
				update_post_meta($post_id, 'wp_poster_messages', strip_tags($_POST['wp_poster_messages']));
			}
			### hook email
			if ( !wp_is_post_revision( $post_id ) ) {
				do_action('wpo_poster_hook_notice_email',$post_id);
			}
			
		}
		return;
	}
	add_action( 'save_post', 'wpo_poster_metabox_messages_call_save' );
}
if(!function_exists('wpo_poster_post_info_call')){
	function wpo_poster_post_info_call() {
		global $post;
		$html = null;
		$user = get_user_by('id', wpo_poster_get_author($post->ID));
		$is_paid = get_post_meta($post->ID,'poster_has_paid',true);
		$html .= __('Written by: <span class="label label-info">'.$user->user_login.'</span>');	
		$html .= '<br/>';
		$html .= __('Email: <span class="label label-info">'.$user->user_email.'</span>');
		$html .= '<br/>';
		$html .= __('Post status: <span class="label label-info">'.get_post_status($post->ID).'</span>');
		$html .= '<br/>';
		if( $is_paid ){
			$html .= __('Paid: ' . $is_paid . ' '. wpo_poster_get_currency());	
		}
		else{
			$html .= __('Paid: No');
		}
		echo $html;
	}
}

if(!function_exists('wpo_poster_payment_info_call')){
	function wpo_poster_payment_info_call() {
		global $post;
		$is_paid = get_post_meta($post->ID,'poster_has_paid',true);
		if($is_paid){
			$disabled = 'disabled';
			$bg = 'background:#dfdfdf';
		}
		$paid_amount = get_post_meta($post_id,'poster_paid_amount',true) ?  get_post_meta($post_id,'poster_paid_amount',true) : wpo_poster_get_cost_per_article();
		$html = '<input style="'.$bg.'" '.$disabled.' type="text" name="poster-amount" value="'.$paid_amount.'">'.wpo_poster_get_currency();
		if(!$is_paid){
			$html .= '<input type="button" id="poster-admin-pay" class="button button-primary button-large" value="Pay">';	
		}
		echo $html;
	}
}
if(!function_exists('wpo_poster_transactions_info_call')){
	function wpo_poster_transactions_info_call() {
		global $post;
		$trans_receiver = get_user_by('id', (int)get_post_meta($post->ID,'poster_trans_receiver',true));
		$html = '
			  <style>
			  	.regular-text{
					height: 35px;
					width: 100%;
					font-size: 20px;	
					padding: 5px;		  		
				}
				.control-group{
					margin-bottom: 10px;
				}
				div.control-group input[type="text"], input[type="password"], input[type="email"]{
					width: 90%;
					height: 33px;
					padding: 10px;
					background:#f7f7f7;
				}				
			  </style>
		';
		$html .='
			  <div class="control-group">
			    <label class="control-label">'.__('Transaction Amount','wpo').'</label>
			    <div class="controls">
			    	<input disabled type="text" value="$'.get_post_meta($post->ID,'poster_trans_amount',true).'">
			    </div>
			  </div>
			 ';
		if( get_post_meta($post->ID,'poster_trans_type',true) !='withdrawal' ){
			$html .= '
			  <div class="control-group">
			    <label class="control-label">'.__('Paid For Item','wpo').'</label>
			    <div class="controls">
			   		<input disabled type="text" value="'.get_the_title( get_post_meta($post->ID,'poster_trans_item_paid',true) ).'">
			    </div>
			  </div>			
			';
				
		}
		else{
			$html .= '
			  <div class="control-group">
			    <label class="control-label">'.__('Paypal account','wpo').'</label>
			    <div class="controls">
			   		<input disabled type="text" value="'.get_post_meta($post->ID,'poster_trans_paypal_account',true).'">
			    </div>
			  </div>			
			';
		}
		$html .= '  
			  <div class="control-group">
			    <label class="control-label">'.__('Transaction Receiver','wpo').'</label>
			    <div class="controls">
			    	<input disabled type="text" value="'.$trans_receiver->user_login.'">
			    </div>
			  </div>			  
		';
		if( get_post_meta($post->ID,'poster_trans_type',true) =='withdrawal' ){
			$html .= '
			  <div class="control-group">
			    <label class="control-label">'.__('PayPal Transaction ID ','wpo').'</label>
			    <div class="controls">
			    	<input style="background:#fff" type="text" value="'.get_post_meta($post->ID,'poster_paypal_transaction_id',true).'" name="poster_paypal_transaction_id">
			    </div>
			  </div>
			
			';
		}
	echo $html;
	}
}
if(!function_exists('wpo_poster_transactions_info_call_save')){
	function wpo_poster_transactions_info_call_save($post_id) {
		if(current_user_can('add_users')){
			if( get_post_meta($post_id,'poster_trans_type',true) =='withdrawal'){
				if( trim($_POST['poster_paypal_transaction_id']) ){
					update_post_meta($post_id, 'poster_paypal_transaction_id', strip_tags($_POST['poster_paypal_transaction_id']));	
				}
			}
		}
		return;		
	}
	add_action( 'save_post', 'wpo_poster_transactions_info_call_save' );
}













