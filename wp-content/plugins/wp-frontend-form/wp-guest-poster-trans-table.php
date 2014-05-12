<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

function wpo_poster_trans_columns($columns) {
	$new_columns = array(
		//'avatar'	=>	__('Author','wpo'),
		'trans_id'	=>	__('TID','wpo'),
		//'receiver'	=>	__('Receiver','wpo'),
		'transaction' => __('Transaction'),
		'paypal_account'	=>	'Paypal Account',
		'type'	=>	__('Type'),
		'amount'	=>	__('Amount'),
		'status'	=>	__('Status'),
		'date'	=>	__('Date')
	);
	unset(
		$columns['title'],
		$columns['author'],
		$columns['comments'],
		$columns['date']
	);	
    return array_merge($columns, $new_columns);
}
add_filter('manage_edit-poster-transactions_columns' , 'wpo_poster_trans_columns');

if(!function_exists('wpo_poster_trans_custom_columns')){
	function wpo_poster_trans_custom_columns( $column, $post_id ) {
	  switch ( $column ) {
	  	case 'trans_id':
	  		echo $post_id;
	  	break;
	  	case 'receiver':
	  		$user = get_user_by('id', get_post_meta($post_id,'poster_trans_receiver',true));
	  		echo $user->user_login;
	  	break;
	  	case 'avatar':
	  		echo get_avatar( wpo_poster_get_author($post_id), 64 );
	  	break;
	  	case 'transaction':
	  		echo '<a href="post.php?post='.$post_id.'&action=edit">'.get_the_title($post_id).'</a>';
	  		if( get_post_status($post_id)=='pending' ){
	  			/**
		  		if (class_exists("NicePayPalButtonLite")) {
				    $nice_paypalButtonLite = new NicePayPalButtonLite();
					   echo $nice_paypalButtonLite->getNicePayPalButtonLite(array(
				  			'name'	=>	get_the_title($post_id),
				  			'amount'	=>	get_post_meta($post_id,'poster_trans_amount',true),
					   		'email'	=>	get_post_meta($post_id,'poster_trans_paypal_account',true),
					   		'button_image'	=>	'https://www.paypal.com/en_US/i/btn/btn_paynowCC_LG.gif'
				  		));
				  }
				  **/
	  			$business = get_post_meta($post_id,'poster_trans_paypal_account',true);
	  			$currency_code = wpo_poster_get_currency();
	  			$amount = get_post_meta($post_id,'poster_trans_amount',true);
	  			$item_name = 'Pay for ' . $business;
	  			$paypal_url = 'https://www.paypal.com/cgi-bin/webscr?business='.$business.'&cmd=_xclick&currency_code='.$currency_code.'&amount='.$amount.'&item_name='.$item_name;
	  			echo '<a class="button button-primary button-large" target="_blank" href="'.$paypal_url.'">Pay now</a>';
	  		}
	  	break;
	  	case 'paypal_account':
	  			echo get_post_meta($post_id,'poster_trans_paypal_account',true);
	  	break;
	  	case 'type':
	  		echo get_post_meta($post_id,'poster_trans_type',true);
	  	break;
	  	case 'amount':
	  		echo '$'.get_post_meta($post_id,'poster_trans_amount',true);
	  	break;
	  	case 'status':
	  		echo wpo_poster_highlight_status($post_id);
	  	break;
	  }		
	}
	add_action( "manage_poster-transactions_posts_custom_column", "wpo_poster_trans_custom_columns", 10, 2 );
}
if(!function_exists('wpo_poster_restrict_trans')){
	function wpo_poster_restrict_trans() {
		global $typenow;
		if( get_post_type()=='poster-transactions' ){
			$trans_status = array(
				'publish'	=>	'Complete',
				'pending'	=>	'Pending',
			);
			$trans_type = array(
				'paid'	=>	'Paid',
				'withdrawal'	=>	'Withdrawal'
			);
			echo '<select name="post_status">';
				echo '<option value="">'.__('Select status...','wpo').'</option>';
				foreach ($trans_status as $k=>$v){
					?>
						<option <?php if($_GET['post_status']==$k):?> selected <?php endif;?>  value="<?php echo $k;?>"><?php echo $v;?></option>
					<?php 
				}
			echo '</select>';
			
			echo '<select name="trans_type">';
				echo '<option value="">'.__('Select type...','wpo').'</option>';
				foreach ($trans_type as $k=>$v){
					?>
						<option <?php if($_GET['trans_type']==$k):?> selected <?php endif;?>  value="<?php echo $k;?>"><?php echo $v;?></option>
					<?php 
				}
			echo '</select>';			
			echo '<label>Paypal TID </label>';
			echo '<input type="search" name="tid" value="'.trim( $_GET['tid'] ).'">';			
		}		
	}
	add_action('restrict_manage_posts','wpo_poster_restrict_trans');
}


if(!function_exists('wpo_poster_trans_par_q')){
	function wpo_poster_trans_par_q() {
		if(is_admin()){
			global $pagenow, $post_type;
			if( 'edit.php' == $pagenow && 'poster-transactions' == $post_type ){
		       	if(trim($_GET['trans_type'])){
					set_query_var('meta_key', 'poster_trans_type');
					set_query_var('meta_value', trim($_GET['trans_type']));
					set_query_var('meta_compare', '==');
		       	}
		       	if( trim($_GET['tid']) ){
		       		$tid = trim($_GET['tid']);
					set_query_var('meta_key', 'poster_paypal_transaction_id');
					set_query_var('meta_value', $tid);
					set_query_var('meta_compare', '==');		       		
		       		
		       	}
			}	
       }
	}
	add_filter('parse_query', 'wpo_poster_trans_par_q');
	//add_action('pre_get_posts', 'wpo_poster_trans_par_q');
}