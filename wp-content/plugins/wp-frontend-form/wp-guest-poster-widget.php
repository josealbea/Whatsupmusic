<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_widget_profile')){
	function wpo_poster_widget_profile() {
		register_widget('WPO_poster_widget');
	}
	add_action('widgets_init', 'wpo_poster_widget_profile');
}
class WPO_poster_widget extends WP_Widget{
	function WPO_poster_widget() {
		$widget_ops = array( 'classname' => 'wpo_poster_profile', 'description' => __('Guest Poster Profile', 'wpo') );
		
		$control_ops = array( 'width' => 300, 'height' => 350, 'id_base' => 'wpo-poster-profile' );
		
		$this->WP_Widget( 'wpo-poster-profile', __('Guest Poster Profile', 'wpo'), $widget_ops, $control_ops );
	}
		function widget($args, $instance){
			extract( $args );
			$title = apply_filters('widget_title', $instance['title'] );
			if( is_user_logged_in() ):
				$html = null;
				$user = get_user_by('id', get_current_user_id());
				echo $before_widget;
					if ( $title ){
						echo $before_title . $title . $after_title;
					}
				if( wpo_poster_get_enable_payment()=='yes' ){
					$balance =  get_user_meta(get_current_user_id(),POSTER_USER_BALANCE,TRUE) ? get_user_meta(get_current_user_id(),POSTER_USER_BALANCE,TRUE) : 0;
					$balance = ',$'.$balance;
					
				}
				$html .= '<h3>
					'.$user->user_login . $balance.'
				</h3>';
				$html .= '
					<ul class="topnav">
					    <li><a class="fancybox" href="#poster-profile">'.__('Profile','wpo').'</a></li>
				';
				if( wpo_poster_get_enable_payment()=='yes' ):
					$html .='
					    <li><a class="fancybox" href="#poster-earnings">'.__('Earnings','wpo').'</a></li>
					    <li><a class="fancybox" href="#poster-history">'.__('History','wpo').'</a></li>
					    <li><a class="fancybox" href="#poster-withdrawal">'.__('Withdrawal','wpo').'</a></li>
					';
				endif;
				$html .='
					</ul>				
				';
				### Profile
				$html .= '
					<div id="poster-profile" style="display: none">
						<form action method="post" id="form-poster-profile">
						    <div class="control-group">
							    <label class="control-label">'.__('Email','wpo').'</label>
							    <div class="controls">
							      <input disabled required name="poster[email]" type="text" value="'.$user->user_email.'">
							    </div>
							</div>
						    <div class="control-group">
							    <label class="control-label">'.__('Username','wpo').'</label>
							    <div class="controls">
							      <input disabled required name="poster[username]" type="text" value="'.$user->user_login.'">
							    </div>
							</div>
							<div class="control-group">
							    <label class="control-label">'.__('Fullname','wpo').'</label>
							    <div class="controls">
							      <input name="poster[fullname]" type="text" value="'.$user->display_name.'">
							    </div>
						    </div>
						    <legend>'.__('Change password','wpo').'</legend>
							<div class="control-group">
							    <label class="control-label">'.__('Password','wpo').'</label>
							    <div class="controls">
							      <input name="poster[password1]" type="password">
							    </div>
						    </div>						    
							<div class="control-group">
							    <label class="control-label">'.__('Confirm password','wpo').'</label>
							    <div class="controls">
							      <input name="poster[password2]" type="password">
							    </div>
						    </div>						    
							<div class="control-group">
						    <div class="controls">
						      <input type="hidden" name="poster[act]" value="wpo_poster_profiles_profile">
						      <input type="hidden" name="action" value="wpo_poster_profiles">
						      <button type="submit" class="btn btn-large">'.__('Submit Request','wpo').'</button>
						    </div>						    
						  </div>
						      <div class="alert poster-profile-success" style="display:none">
						      </div>						  
						  </form>    
					</div>					
				';				
				### Earnings
				$html .= '
					<div id="poster-earnings" style="display: none">
					<h3>'.__('All Earnings','wpo').'</h3>
					    <table class="table table-hover poster-earnings-table">
					    	<thead>
					    	<tr>
					    		<td>'.__('Type','wpo').'</td>
					    		<td>'.__('Article ID','wpo').'</td>
					    		<td>'.__('Article name','wpo').'</td>
					    		<td>'.__('Amount','wpo').'</td>
					    		<td>'.__('Status','wpo').'</td>
					    	</tr>
					    	</thead>
					    ';
				$args = array(
				    'post_type'	=>	'poster-transactions',
				    'post_status'	=>	'publish',		
					'meta_key'	=>	'poster_trans_receiver',
					'meta_value'	=>	get_current_user_id(),
					'posts_per_page'	=>	5,
					'orderby'	=>	'ID',
					'order'	=>	'DESC'
				);
				$posts = get_posts($args);
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
							$paypal_tid = get_post_meta($post->ID,'poster_paypal_transaction_id',true) ? get_post_meta($post->ID,'poster_paypal_transaction_id',true) : null;
							if($paypal_tid){
								$paypal_tid = __('<br/>Paypal transaction ID:','wpo') . $paypal_tid;
							} 
							$html .= '
								<td>
									'.__('Withdrawal to ' . get_post_meta($post->ID,'poster_trans_paypal_account',true)).'
									'.$paypal_tid.'
								</td>
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
				$html .='
					    </table>
					    <button trans_id="'.$post->ID.'" class="btn btn-large load-more-transactions" type="button">'.__('Load more','wpo').'</button>
					</div>
				';
				### History
				$html .= '
					<div id="poster-history" style="display: none">
					<h3>'.__('All History','wpo').'</h3>
					    <table class="table table-hover poster-earnings-table">
					    	<thead>
					    	<tr>
					    		<td>'.__('Type','wpo').'</td>
					    		<td>'.__('Article ID','wpo').'</td>
					    		<td>'.__('Article name','wpo').'</td>
					    		<td>'.__('Amount','wpo').'</td>
					    		<td>'.__('Status','wpo').'</td>
					    	</tr>
					    	</thead>
					    ';
				$args = array(
				    'post_type'	=>	'poster-transactions',
				    'post_status'	=>	'publish, pending',
					'meta_key'	=>	'poster_trans_receiver',
					'meta_value'	=>	get_current_user_id(),
					'posts_per_page'	=>	5,
					'orderby'	=>	'ID',
					'order'	=>	'DESC'
				);
				$posts = get_posts($args);
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
				$html .='
					    </table>
					    <button trans_id="'.$post->ID.'" class="btn btn-large load-more-transactions" type="button">'.__('Load more','wpo').'</button>
					</div>
				';				
				### Withdrawal
				$html .= '
					<div id="poster-withdrawal" style="display: none">
						<form action method="post" id="form-poster-profile">
							<h3>'.__('Current Balance of Earnings','wpo').' $<span id="poster_balance">'.get_user_meta(get_current_user_id(),POSTER_USER_BALANCE,TRUE).'</span></h3>
							<p>'.wpo_poster_get_payment_notice().'</p>
						    <div class="control-group">
							    <label class="control-label">'.__('Amount','wpo').'</label>
							    <span class="help-block">'.__('Minimum $50.00','wpo').'</span>
							    <div class="controls">
							      <input required name="poster[amount]" type="text" value="'.get_user_meta(get_current_user_id(),POSTER_USER_BALANCE,TRUE).'">
							    </div>
							</div>
						    <div class="control-group">
							    <label class="control-label">'.__('PayPal username','wpo').'</label>
							    <div class="controls">
							      <input required name="poster[paypal_account]" type="email">
							    </div>
							</div>
							<div class="control-group">
							    <label class="control-label">'.__('Confirm PayPal username','wpo').'</label>
							    <div class="controls">
							      <input required name="poster[confirm_paypal_account]" type="email">
							    </div>
						    </div>
							<div class="control-group">
						    <div class="controls">
						      <input type="hidden" name="poster[act]" value="wpo_poster_profiles_withdrawal">
						      <input type="hidden" name="action" value="wpo_poster_profiles">						    
						      <button type="submit" class="btn btn-large">'.__('Submit Request','wpo').'</button>
						    </div>
						  </div>
						      <div class="alert poster-profile-success" style="display:none">
						      </div>							  
						  </form>    
					</div>					
				';
				echo $html;
				echo $after_widget;
			endif;

		}
		function update( $new_instance, $old_instance ) {
			$instance = $old_instance;
			//Strip tags from title and name to remove HTML 
			$instance['title'] = strip_tags( $new_instance['title'] );
			return $instance;
		}
		function form( $instance ) {
			/* Set up some default widget settings. */
			$defaults = array( 'title' => __('Guest Poster Profile','wpo') );
			$instance = wp_parse_args( (array) $instance, $defaults ); ?>
			 
			<p>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
			<input id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo $instance['title']; ?>" />
			</p>		
			<?php
		}
}