<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_guest_poster_login_act')){
	function wpo_poster_guest_poster_login_act() {
		if( wp_verify_nonce($_POST['wp_guest_poster_login'],'wp_guest_poster_login_act') ){
			$poster = $_POST['poster'];
			$result = NULL;
			$user_login = trim( $poster['account']);
			$user_password = trim( $poster['password'] );
			$me = $poster[me];
			if( $me =='on' ) { $me = true; }
			else{ $me = false; }
			if( $user_login =='' ){
				$result .= __('Please enter Account','wpo');
			}
			if( $user_password =='' ){
				$result .= __('Please enter Password','wpo');
			}
			else{
				$user = wp_signon(array(
					'user_login'	=>	$user_login,
					'user_password'	=>	$user_password
				), $me);
				if ( is_wp_error($user) ){
					$result .= $user->get_error_message();	
				}
				else{
					wp_redirect( get_permalink( $poster['page'] ) );exit();
				}
			}
		}
		if($result){
			return '
				<div class="alert">'.$result.'</div>
			';
		}
	}
	add_action('init', 'wpo_poster_guest_poster_login_act');
}
if(!function_exists('wpo_poster_guest_poster_act')){
	function wpo_poster_guest_poster_act($param) {
		$current_user = get_current_user_id() ? get_current_user_id() : 1;
		if( wp_verify_nonce($_POST['wp_guest_poster'],'wp_guest_poster_act') ){
			if($_POST['poster']):
				$poster = $_POST['poster'];
				$post_id = (int)$_POST['post_id'] ? (int)$_POST['post_id'] : NULL;
				$required_fields = $_POST['poster_required'];
				if(is_array($required_fields)){
					$check_requireds = true;
				}
				else {
					$check_requireds = false;
				}
				### post title
				if( trim( strip_tags( $poster['post_title'] ) ) =='' ){
					echo json_encode(array('resp'=>'required','mess'=>__('Please enter post title!','wpo'),'field'=>'post_title'));exit();
				}
				### post content
				if( trim( $poster['post_content'] ) =='' ){
					echo json_encode(array('resp'=>'required','mess'=>__('Please enter post content!','wpo'),'field'=>'post_content', 'post_content'=>true));exit();
				}
				### comment and ping status
				// $comment_status = $poster['discussion_comment'] ? $poster['discussion_comment'] : '';
				// if( !isset( $poster['discussion_comment'] ) || $poster['discussion_comment'] =='' ){
				// 	$comment_status = 'closed';
				// }
				// else{
					$comment_status = 'open';
				// }
				// if( !isset( $poster['discussion_track'] ) || $poster['discussion_track'] =='' ){
				// 	$ping_status = 'closed';
				// }
				// else{
					$ping_status = 'open';
				// }
				### check login
				/**
				if(!get_current_user_id()){
					if( !is_email(strip_tags( trim( $poster['wp-guest-poster-youremail'] ) ) )){
						echo json_encode(array('resp'=>'required','mess'=>__('Please enter a valid email address','wpo')));exit();
					}
				}
				**/
				### check recaptcha
				if( $poster['recaptcha']=='yes' && wpo_poster_get_recaptcha_private_key()!='' && wpo_poster_get_recaptcha_publish_key()!='' ){
					$resp = null;
					if(!$_POST["recaptcha_response_field"] || $_POST["recaptcha_response_field"] ==''){
						echo json_encode(array('resp'=>'required','mess'=>__('Please enter Recaptcha.','wpo'),'field'=>'recaptcha_response_field'));exit();
					}
					if ($_POST["recaptcha_response_field"]){
					        $resp = recaptcha_check_answer (wpo_poster_get_recaptcha_private_key(),
					                                        $_SERVER["REMOTE_ADDR"],
					                                        $_POST["recaptcha_challenge_field"],
					                                        $_POST["recaptcha_response_field"]);
						if(!$resp->is_valid){
							echo json_encode(array('resp'=>'required','mess'=>$resp->error,'post_recaptcha'=>true));exit();
						}
					}
				}
				### check required fields
				if($check_requireds===true){
					if( $_POST['poster_meta'] ){
						$poster_meta = $_POST['poster_meta'];
						foreach ($poster_meta as $k=>$v){
							if( in_array($k, $required_fields) ){
								if(trim( $v ) == ''){
									echo json_encode(array('resp'=>'required','mess'=>__('Please enter this field','wpo'),'field'=>$k));exit();
								}
							}
						}
					}
				}
				if(!$post_id || $post_id==0){
					$post_data = array(
						'post_title'	=>	stripslashes( $poster['post_title'] ),
						'post_content'	=>	$poster['post_content'],
						'comment_status'	=>	$comment_status,
						'ping_status'	=>	$ping_status,
						'post_status'	=>	wpo_poster_get_post_status(),
						'post_type'		=>	$poster['post_type'],
						'post_author'	=>	$current_user,
						'tags_input'	=>	trim($poster['post_tag']) ? trim($poster['post_tag']) : null
					);	
					$post_id = wp_insert_post($post_data);				
				}
				else{
					### update
					wp_update_post(array(
						'ID'	=>	$post_id,
						'post_title'	=>	stripslashes( $poster['post_title'] ),
						'post_content'	=>	$poster['post_content'],
						'comment_status'	=>	$comment_status,
						'ping_status'	=>	$ping_status,
						'post_status'	=>	wpo_poster_get_post_status(),
						'post_type'		=>	$poster['post_type'],
						'post_author'	=>	$current_user,
						'tags_input'	=>	trim($poster['post_tag']),
					));
				}
				
				if( $post_id > 0 ){
					### add tax
					if( $_POST['tax'] ){
						for ( $i=0;$i<count($_POST['tax']);$i++ ){
							if($i==0){
								wp_set_post_terms($post_id, $_POST['tax'][$i],wpo_poster_get_taxname_from_termid($_POST['tax'][$i]),false);	
							}
							wp_set_post_terms($post_id, $_POST['tax'][$i],wpo_poster_get_taxname_from_termid($_POST['tax'][$i]),true);
						}
					}
					### add post meta
					if( $_POST['poster_meta'] ){
						$poster_meta = $_POST['poster_meta'];
						foreach ($poster_meta as $k=>$v){
							if( $k!='poster_has_paid' ){
								update_post_meta($post_id, $k, $v);	
							}
						}
					}
					if( $_FILES ){
						foreach ($_FILES as $k=>$v){
							if( $k!='poster_has_paid' && $k!='featured_image'){
								if($_FILES[$k]){
									wpo_poster_insert_attachment($k, $post_id, false, $k);	
								}	
							}
						}
					}					
					
					if(!get_current_user_id()){
						update_post_meta($post_id, 'wp-guest-poster-yourname', $poster['wp-guest-poster-yourname']);
						update_post_meta($post_id, 'wp-guest-poster-youremail', $poster['wp-guest-poster-youremail']);
					}
					update_post_meta($post_id, 'wp-guest-poster-status', 'wp_guest_poster');
					### add Featured Image
					if( $_FILES['featured_image'] ){
						wpo_poster_insert_attachment('featured_image', $post_id, true, '');
					}
					if(get_current_user_id() && wpo_poster_get_post_status()=='publish'){
						echo json_encode(array('resp'=>'success','mess'=>__('Post success!','wpo'),'url_post'=>get_permalink($post_id)));exit();	
					}
					else{
						$success_alert = trim($poster['success_alert']);
						if( $success_alert=='' ){
							$success_alert = '<div class="alert alert-success">'.__('Post success and waiting for approve, Click <a href="'.get_permalink($poster[current_page]).'">here</a> to create a new post','wpo').'</div>';
						}
						else{
							$success_alert = '<div class="alert alert-success">'.$success_alert.'</div>'.'</p></div>';
						}
						echo json_encode(array('resp'=>'success','mess'=>$success_alert,'url_post'=>null));exit();
					}
				}
			endif;
		}
		elseif (wp_verify_nonce($_POST['wp_guest_poster_signin'],'wp_guest_poster_signin_act')){
			### sign-in
			$poster = $_POST['poster_meta'];
			$user_login = trim( $poster['user_login'] );
			$user_pass = trim( $poster['user_pass'] );	
			$rememberMe = $poster['rememberMe'];
				
			if( !username_exists( $user_login ) ){
				echo json_encode(array('resp'=>'required','mess'=>__('This username does not exist, please try other','wpo'),'field'=>'user_login'));exit();
			}
			
			$user = wp_signon(array(
				'user_login'	=>	$user_login,
				'user_password'	=>	$user_pass
			), $me);
			if ( is_wp_error($user) ){
				echo json_encode(array('resp'=>'required','mess'=>$user->get_error_message(),'field'=>'user_login'));exit();	
			}
			else{
				echo json_encode(array('resp'=>'success','mess'=>'<div class="alert alert-success">'.__('Login success','wpo').'</div>'));exit();
			}			
			
		}
		elseif (wp_verify_nonce($_POST['wp_guest_poster_signup'],'wp_guest_poster_signup_act')){
			$poster = $_POST['poster_meta'];
			$recapt = $_POST['poster'];
			$user_login = trim( $poster['user_login'] );
			$user_email = trim( $poster['user_email'] );
			$user_pass = trim( $poster['user_pass'] );
			$user_passconfirm = trim( $poster['user_passconfirm'] );
			$required_option = array('user_login','user_email','user_pass','user_passconfirm');
			if( !$user_login ){
				echo json_encode(array('resp'=>'required','mess'=>__('Please enter username','wpo'),'field'=>'user_login'));exit();
			}
			if(username_exists($user_login) ){
				echo json_encode(array('resp'=>'required','mess'=>__('This username had already signup ago, please choose other','wpo'),'field'=>'user_login'));exit();
			}			
			if( !is_email( $user_email ) ){
				echo json_encode(array('resp'=>'required','mess'=>__('Email invalid','wpo'),'field'=>'user_email'));exit();
			}
			if(email_exists($user_email)){
				echo json_encode(array('resp'=>'required','mess'=>__('This email had already signup ago, please choose other','wpo'),'field'=>'user_email'));exit();
			}
			if( !$user_pass || !$user_passconfirm || $user_pass!=$user_passconfirm ){
				echo json_encode(array('resp'=>'required','mess'=>__('Password invalid','wpo'),'field'=>'user_pass'));exit();
			}
			### check recaptcha
			if( $recapt['recaptcha']=='yes' && wpo_poster_get_recaptcha_private_key()!='' && wpo_poster_get_recaptcha_publish_key()!='' ){
				$resp = null;
				if(!$_POST["recaptcha_response_field"] || $_POST["recaptcha_response_field"] ==''){
					echo json_encode(array('resp'=>'required','mess'=>__('Please enter Recaptcha.','wpo'),'field'=>'recaptcha_response_field'));exit();
				}
				if ($_POST["recaptcha_response_field"]){
				        $resp = recaptcha_check_answer (wpo_poster_get_recaptcha_private_key(),
				                                        $_SERVER["REMOTE_ADDR"],
				                                        $_POST["recaptcha_challenge_field"],
				                                        $_POST["recaptcha_response_field"]);
					if(!$resp->is_valid){
						echo json_encode(array('resp'=>'required','mess'=>$resp->error,'post_recaptcha'=>true));exit();
					}
				}
			}			
			$user_id = wp_insert_user(array(
				'user_login'	=>	$user_login,
				'user_email'	=>	$user_email,
				'user_pass'	=>	$user_pass
			));
			if(is_int( $user_id )){
				### signup success
				foreach ($poster as $k=>$v){
					if( !in_array($k, $required_option) && $v!=''){
						update_user_meta($user_id, $k, $v);	
					}
				}
				echo json_encode(array('resp'=>'success','mess'=>__('<div class="alert alert-success">Congratulations, Signup success!</div>','wpo')));exit();
			}
			else{
				echo json_encode(array('resp'=>'required','mess'=>__('Signup error, please try again!','wpo')));exit();	
			}
		}
	}
	add_action('wp_ajax_wp_guest_poster_act', 'wpo_poster_guest_poster_act');
	add_action('wp_ajax_nopriv_wp_guest_poster_act', 'wpo_poster_guest_poster_act');
}

if( !function_exists('wpo_poster_profiles_action') ){
	function wpo_poster_profiles_action(){
		if(is_user_logged_in()){
			$user_id = get_current_user_id();
			$user = get_user_by('id', get_current_user_id());
			if($_POST){
				$poster = $_POST['poster'];
				$act = $poster['act'];
				switch ($act) {
					### update profile
					case 'wpo_poster_profiles_profile':
						if( strip_tags( trim( $poster['fullname'] ) ) !='' ){
							$user_data = array(
								'ID'	=>	$user_id,
								'display_name'	=>	strip_tags( trim( $poster['fullname'] ) )
							);
							if( trim( $poster['password1'] ) !='' ){
								if( trim( $poster['password1'] ) == trim( $poster['password2'] ) ){
									$user_data['user_pass'] = trim( $poster['password1'] );
								}
								else{
									echo json_encode(array('resp'=>'required','mess'=>__('Please confirm new password!','wpo')));exit();
								}
							}
							$id = wp_update_user($user_data);
							if($id>0){
								echo json_encode(array('resp'=>'success','mess'=>__('Update profile success!','wpo')));exit();
							}
							else{
								echo json_encode(array('resp'=>'required','mess'=>__('error, Please try again!','wpo')));exit();
							}
						}
					break;
					case 'wpo_poster_profiles_withdrawal':
						$amount = (int)$poster['amount'];
						$current_balance = (int)get_user_meta($user_id,POSTER_USER_BALANCE,TRUE);
						$paypal_account = trim($poster['paypal_account']);
						$confirm_paypal_account = trim($poster['confirm_paypal_account']);
						if($amount < wpo_poster_get_withdrawal_minimum()){
							echo json_encode(array('resp'=>'required','mess'=>__('Withdrawal amount must greater than $' . wpo_poster_get_withdrawal_minimum())));exit();
						}
						if( $amount > $current_balance ){
							echo json_encode(array('resp'=>'required','mess'=>__('Withdrawal amount must over your balance')));exit();
						}
						else{
							if( !is_email( $paypal_account ) ){
								echo json_encode(array('resp'=>'required','mess'=>__('error, Please enter a valid email!','wpo')));exit();
							}
							else{
								if( $paypal_account!=$confirm_paypal_account ){
									echo json_encode(array('resp'=>'required','mess'=>__('error, Please confirm email!','wpo')));exit();
								}
								else{
									### OK, proccess it
									$new_balance = $current_balance - $amount;
									### re-update user balance
									update_user_meta($user_id, POSTER_USER_BALANCE, $new_balance);
									### add transaction with withdrawal type
									$trans_data = array(
										'post_title'	=>	'#Withdrawal for #' . $user->user_login,
										'post_type'	=>	'poster-transactions',
										'post_status'	=>	'pending'
									);
									$transaction_id = wp_insert_post($trans_data);
									if($transaction_id>0){
										### update transaction meta
										### amount
										update_post_meta($transaction_id, 'poster_trans_amount', $amount);
										### receiver
										update_post_meta($transaction_id, 'poster_trans_receiver', $user_id);
										### paypal account
										update_post_meta($transaction_id, 'poster_trans_paypal_account', $paypal_account);
										### Transaction type
										update_post_meta($transaction_id, 'poster_trans_type', 'withdrawal');
										echo json_encode(array('resp'=>'success','mess'=>__('Withdrawal success','wpo'),'balance'=>get_user_meta($user_id,POSTER_USER_BALANCE,true)));exit();					
									}
									echo json_encode(array('resp'=>'required','mess'=>__('Withdrawal error, please try again!')));exit();
								}
							}
						}
					break;
					default:
						;
					break;
				}
			}
		}
		else{
			return;
		}
	}
	add_action('wp_ajax_wpo_poster_profiles', 'wpo_poster_profiles_action');
}
if(!function_exists('wpo_poster_adminpay')){
	function wpo_poster_adminpay() {
		header( "Content-Type: application/json" );
		if(current_user_can('add_users')){
			$post_id = (int)$_POST['post_id'];
			$poster_amount = (int)$_POST['poster_amount'];
			if( !$post_id || !$poster_amount  || $poster_amount ==0 ){
				echo json_encode(array('resp'=>'error','mess'=>__('Invalid item or Amount null','wpo')));exit();
			}
			else{
				if( get_post_meta($post_id,'poster_has_paid',true)!='' ){
					### da thanh toan roi
					echo json_encode(array('resp'=>'error','mess'=>__('You had paid for this post ago!','wpo')));exit();
				}
				else{
					update_post_meta($post_id, 'poster_has_paid', $poster_amount);
					### + vao balance user
					do_action('wpo_poster_hook_add_transactions', $post_id);
					echo json_encode(array('resp'=>'success','mess'=>__('OK','wpo')));exit();
				}
			}
		}
		else{
			echo json_encode(array('resp'=>'error','mess'=>__('You do not have right role to access this feature!','wpo')));exit();
		}
	}
	add_action('wp_ajax_poster_admin_pay', 'wpo_poster_adminpay');
}
### load more transaction
if(!function_exists('wpo_poster_loadmore_transactions')){
	function wpo_poster_loadmore_transactions() {
		header( "Content-Type: application/json" );
		global $wpdb;
		$html = NULL;
		$user_id = get_current_user_id();
		$trans_id = (int)$_POST['trans_id'];
		if(!$user_id || !$trans_id){ return; }
		else{
			/**
			$args = array(
			    'post_type'	=>	'poster-transactions',
			    'post_status'	=>	'publish',		
				'meta_key'	=>	'poster_trans_receiver',
				'meta_value'	=>	$user_id,
				'posts_per_page'	=>	5
			);
			$posts = get_posts($args);
			**/
			$posts = $wpdb->get_results("SELECT * FROM $wpdb->posts p INNER JOIN $wpdb->postmeta mt ON p.ID = mt.post_id AND `meta_key`='poster_trans_receiver' AND `meta_value`= $user_id WHERE `post_type`='poster-transactions' AND `post_status`='publish' AND p.ID<$trans_id ORDER BY p.ID DESC LIMIT 5");
			if($posts){
				foreach ($posts as $post){
					$html .= '
						<tbody>
				    	<tr>
				    		<td><strong>'.get_post_meta($post->ID,'poster_trans_type',true).'</strong></td>
				    		<td>'.get_post_meta($post->ID,'poster_trans_item_paid',true).'</td>
				    ';
					if( get_post_meta($post->ID,'poster_trans_type',true) =='withdrawal'){
						$prefix = '-';
						$html .= '
							<td>'.__('Withdrawal to ' . get_post_meta($post->ID,'poster_trans_paypal_account',true)).'</td>
						';
					}
					else{
						$prefix = '+';
						$html .= '
							<td><a href="'.get_permalink( get_post_meta($post->ID,'poster_trans_item_paid',true) ).'">'.get_the_title(get_post_meta($post->ID,'poster_trans_item_paid',true)).'</a></td>
						';
					}
				    
				    $html .=	'<td>'.$prefix.'$'.get_post_meta($post->ID,'poster_trans_amount',true) . '</td>
				    	<td>'.wpo_poster_highlight_status($post->ID).'</td>
				    	</tr>	
				    	</tbody>				
					';						
				}
			}
		}
		echo json_encode(array('resp'=>'success','mess'=>$html, 'trans_id'=>$post->ID));exit();
	}
	add_action('wp_ajax_load_more_transactions', 'wpo_poster_loadmore_transactions');
}

### delete post
if(!function_exists('wpo_poster_delete_post')){
	function wpo_poster_delete_post() {
		header( "Content-Type: application/json" );
		$post_id = (int)$_POST['post_id'];
		if( wpo_poster_check_post_author($post_id) === true ){
			if( wp_delete_post($post_id,true)){
				echo json_encode(array('resp'=>'success','mess'=>__('Delete success','wpo')));exit();
			}
			else{
				echo json_encode(array('resp'=>'required','mess'=>__('Failure delete, please try again','wpo')));exit();
			}
		}
		else{
			echo json_encode(array('resp'=>'required','mess'=>__('You can not delete this post','wpo')));exit();
		}
	}
	add_action('wp_ajax_poster_delete_post', 'wpo_poster_delete_post');
}
