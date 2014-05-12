<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if( !function_exists('wpo_poster_add_menu_setting_admin') ){
	function wpo_poster_add_menu_setting_admin() {
		add_menu_page(__('WP FrontEnd Form','wpo'), __('WP FrontEnd Form','wpo'), 'add_users', 'wp-guest-poster','wp_poster_admin_option', plugin_dir_url(__FILE__) . 'img/form_icon_small.png');
	}
	add_action('admin_menu', 'wpo_poster_add_menu_setting_admin');
}
if( !function_exists('wp_poster_admin_option') ){
	function wp_poster_admin_option() {
		$tabs = array(
			''	=>	__('General','wpo'),
			'payment'	=>	__('Payment','wpo'),
			'notification'	=>	__('Notification','wpo'),
			'email'	=>	__('Email','wpo'),
			'debug'	=>	__('Debug','wpo')
		)
		?>
			<div class="wrap">
				<style>
					.regular-text{
						width: 300px;	
					}
					.successed{
						background-color:#dff0d8!important;
						border-color:rgb(175, 221, 157)!important;
					}
				</style>
				<div id="icon-options-general" class="icon32"><br></div>
				<h2 class="nav-tab-wrapper">
					<?php 
						foreach ($tabs as $k=>$v){
							?><a href="options-general.php?page=wp-guest-poster&tab=<?php echo $k;?>" class="nav-tab <?php if($_GET['tab']==$k): echo 'nav-tab-active';endif;?>"><?php echo $v;?></a><?php 
						}
					?>
				</h2>
				<?php if(wpo_poster_save_settings()):?>
				<div class="updated successed"><p><strong><?php echo wpo_poster_save_settings();?></strong></p></div>				
				<?php endif;?>
				<h2><?php echo $tabs[$_GET[tab]] ? $tabs[$_GET[tab]] : __('Guest Poster Options','wpo');?></h2>
					<table class="form-table">
						<tbody>
						<?php if(!$_GET['tab']):?>
							<form method="post">
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Post status default','wpo');?>"><?php _e('Post status default','wpo');?></label></th>
								<td>
									<select name="wpo_poster_post_status" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status() as $k=>$v  ){
												?><option <?php if( wpo_poster_get_post_status()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							<!-- 
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Allow Guest send new Post','wpo');?>"><?php _e('Allow Guest send new Post','wpo');?></label></th>
								<td>
									<select name="wpo_poster_allow_guest_posting" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_allow_guest_posting()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Display Add Media button','wpo');?>"><?php _e('Display "Add Media" button','wpo');?></label></th>
								<td>
									<select name="wpo_poster_display_media_button" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_display_media_button()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Allow upload Featured Image','wpo');?>"><?php _e('Allow upload Featured Image','wpo');?></label></th>
								<td>
									<select name="wpo_poster_upload_featured_img" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_upload_featured_img()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Use Recaptcha to prevent spamming','wpo');?>"><?php _e('Use Recaptcha to prevent spamming, <a target="_blank" href="http://www.google.com/recaptcha">Get one now!</a>','wpo');?></label></th>
								<td>
									<select name="wpo_poster_recaptcha" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_recaptcha()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							-->
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Listing pages show at most','wpo');?>"><?php _e('Listing pages show at most','wpo');?></label></th>
								<td>
									<input name="wpo_poster_listingpage_show" value="<?php echo wpo_poster_get_listingpage_show();?>" type="text" class="regular-text">
								</td>
							</tr>							
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Recaptcha Private Key','wpo');?>"><?php _e('Recaptcha Private Key','wpo');?></label></th>
								<td>
									<input name="wpo_poster_recaptcha_private_key" value="<?php echo wpo_poster_get_recaptcha_private_key();?>" type="text" class="regular-text">
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Recaptcha Publish Key','wpo');?>"><?php _e('Recaptcha Publish Key','wpo');?></label></th>
								<td>
									<input name="wpo_poster_recaptcha_publish_key" value="<?php echo wpo_poster_get_recaptcha_publish_key();?>" type="text" class="regular-text">
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Erase rejected articles','wpo');?>"><?php _e('Erase rejected articles','wpo');?></label></th>
								<td>
									<select name="wpo_poster_erase_rejected_articles" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_erase_rejected_articles()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>							
							<tr valign="top">
								<th scope="row"><label><?php _e('Schedule of erase rejected articles, only delete the article posted by this plugin.','wpo');?></label></th>
								<td>
									<select name="wpo_poster_schedule_erase_rejected_articles" class="regular-text">
										<option value="0"><?php _e('Choose one','wpo');?></option>
									<?php 
										foreach (wp_get_schedules() as $k=>$v){
											?><option <?php if( wpo_poster_get_schedule_erase_rejected_articles()==$k ): echo 'selected';endif;?> value="<?php echo $k;?>"><?php echo $v['display'];?></option><?php 
										}
									?>
									</select>
								</td>
							</tr>							
							<tr valign="top"><td colspan="2">
								<input class="button-primary" type="submit" value="<?php _e('Save change','wpo');?>">
								<?php wp_nonce_field('wpo_poster_save_change_act','wpo_poster_save_change');?>
							</td></tr>
							</form>
							<?php elseif($_GET['tab']=='payment'):?>
							<form method="post">
							<tr valign="top">
								<th scope="row"><label><?php _e('Enable Payment','wpo');?></label></th>
								<td>
									<select name="wpo_poster_enable_payment" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_enable_payment()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label><?php _e('Currency','wpo');?></label></th>
								<td>
									<input name="wpo_poster_currency" value="<?php echo wpo_poster_get_currency();?>" type="text" class="regular-text">
								</td>
							</tr>														
							<tr valign="top">
								<th scope="row"><label><?php _e('Cost per Articles','wpo');?></label></th>
								<td>
									<input name="wpo_poster_cost_per_article" value="<?php echo wpo_poster_get_cost_per_article();?>" type="text" class="regular-text">
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label><?php _e('Withdrawal Minimum','wpo');?></label></th>
								<td>
									<input name="wpo_poster_withdrawal_minimum" value="<?php echo wpo_poster_get_withdrawal_minimum();?>" type="text" class="regular-text">
								</td>
							</tr>														
							<tr valign="top">
								<th scope="row"><label><?php _e('Paypal Account','wpo');?></label></th>
								<td>
									<input name="wpo_poster_paypal_account" value="<?php echo wpo_poster_get_paypal_account();?>" type="text" class="regular-text">
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label><?php _e('Notice','wpo');?></label></th>
								<td>
									<?php echo wpo_poster_get_editor(wpo_poster_get_payment_notice(), 'wpo_poster_payment_notice', 'wpo_poster_payment_notice');?>
								</td>
							</tr>														
							<tr valign="top"><td colspan="2">
								<input class="button-primary" type="submit" value="<?php _e('Save change','wpo');?>">
								<?php wp_nonce_field('wpo_poster_save_change_act','wpo_poster_save_change');?>
							</td></tr>
							</form>							
							<?php elseif ($_GET['tab']=='notification'):?>
							<form method="post">
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Alert when Articles was rejected','wpo');?>"><?php _e('Alert when Articles was rejected','wpo');?></label></th>
								<td>
									<select name="wpo_poster_articles_rejected" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_articles_rejected()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Reject subject','wpo');?>"><?php _e('Reject subject','wpo');?></label></th>
								<td>
									<input name="wpo_poster_articles_rejected_subject" value="<?php echo wpo_poster_get_articles_rejected_subject();?>" type="text" class="regular-text">
								</td>
							</tr>							
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Reject Messages','wpo');?>"><?php _e('Reject Messages','wpo');?></label></th>
								<td>
									<?php echo wpo_poster_get_editor(wpo_poster_get_messages_rejected(), 'wpo_poster_messages_rejected', 'wpo_poster_messages_rejected');?>
								</td>
							</tr>																					
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Alert when Articles was Approved','wpo');?>"><?php _e('Alert when Articles was Approved','wpo');?></label></th>
								<td>
									<select name="wpo_poster_articles_approve" class="regular-text">
										<?php 
											foreach ( wpo_poster_define_status('yes') as $k=>$v  ){
												?><option <?php if( wpo_poster_get_articles_approve()==$k ):echo 'selected';endif;?> value="<?php echo $k?>"><?php echo $v;?></option><?php 
											}
										?>
									</select>
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Approve subject','wpo');?>"><?php _e('Approve subject','wpo');?></label></th>
								<td>
									<input name="wpo_poster_articles_approve_subject" value="<?php echo wpo_poster_get_articles_approve_subject();?>" type="text" class="regular-text">
								</td>
							</tr>							
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Approve Messages','wpo');?>"><?php _e('Approve Messages','wpo');?></label></th>
								<td>
									<?php echo wpo_poster_get_editor(wpo_poster_get_messages_approve(), 'wpo_poster_messages_approve', 'wpo_poster_messages_approve');?>
								</td>
							</tr>	
							<tr valign="top"><td colspan="2">
								<input class="button-primary" type="submit" value="<?php _e('Save change','wpo');?>">
								<?php wp_nonce_field('wpo_poster_save_change_act','wpo_poster_save_change');?>
							</td></tr>
							</form>													
							<?php elseif ($_GET['tab']=='email'):?>
							<form method="post">
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Sender name','wpo');?>"><?php _e('Sender name','wpo');?></label></th>
								<td>
									<input name="wpo_poster_email_sender_name" value="<?php echo wpo_poster_get_email_sender_name();?>" type="text" class="regular-text">
								</td>
							</tr>							
							<tr valign="top">
								<th scope="row"><label for="<?php _e('Sender email','wpo');?>"><?php _e('Sender email','wpo');?></label></th>
								<td>
									<input name="wpo_poster_email_sender_email" value="<?php echo wpo_poster_get_email_sender_email();?>" type="text" class="regular-text">
								</td>
							</tr>							
							<tr valign="top"><td colspan="2">
								<input class="button-primary" type="submit" value="<?php _e('Save change','wpo');?>">
								<?php wp_nonce_field('wpo_poster_save_change_act','wpo_poster_save_change');?>
							</td></tr>
							</form>								
							<?php elseif($_GET['tab']=='debug'):?>
							<tr valign="top">
								<td colspan="2">
									<form name="wp-poster-debug" id="wp-poster-debug" action="" method="post"> 
										<input type="hidden" name="tab" value="debug">
										<input type="hidden" name="page" value="wp-guest-poster">
										<input class="button-primary" type="submit" value="<?php _e('Press me!','wpo');?>">
										<?php wp_nonce_field('wpo_poster_debug_act','wpo_poster_debug',false);?>
									</form>
								</td>
							</tr>
							<?php $resp = wpo_poster_debug_fnc();?>
								<?php if($resp):?>
								<tr valign="top">
									<td colspan="2">
										<?php 
											foreach ($resp as $k=>$v){
												?>
													<div class="<?php echo $v['class']?>"> 
													<p><strong><?php echo($v['mess']);?></strong></p></div>												
												<?php 
											}
										?>
									</td>
								</tr>			
								<?php endif;?>				
							<?php endif;?>
						</tbody>
					</table>
			</div>
		<?php 
	}
}