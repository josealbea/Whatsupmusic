<?php

if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );

if(!function_exists('wpo_poster_debug_fnc')){
	function wpo_poster_debug_fnc() {
		$result = NULL;
		if(wp_verify_nonce($_POST['wpo_poster_debug'],'wpo_poster_debug_act')){
			### check recaptcha
			if( wpo_poster_get_recaptcha()=='yes' ){
				if( wpo_poster_get_recaptcha_private_key() =='' ){
					$result['private_key'] = array(
						'class'	=>	'error',
						'mess'	=>	__('You had enable Recaptcha, but have a invalid private key','wpo')
					);
				}
				if( wpo_poster_get_recaptcha_publish_key() =='' ){
					$result['publish_key'] = array(
						'class'	=>	'error',
						'mess'	=>	__('You had enable Recaptcha, but have a invalid Publish key','wpo')
					);
				}
			}
			### check email sender
			if( wpo_poster_get_articles_rejected() =='yes' || wpo_poster_get_articles_approve() =='yes'  ){
				if(wp_mail(wpo_poster_get_email_sender_email(), __('Just a Test Message','wpo'), __('Just a Test Message From ' . get_bloginfo('name'),'wpo'))!==TRUE){
					$result['sender_email'] = array(
						'class'	=>	'error',
						'mess'	=>	__('Email sending failed, We recomment you use <a href="http://coffee2code.com/wp-plugins/configure-smtp/" target="_blank">Configure SMTP</a> plugin for SMTP email sending','wpo')
					);
				}
				if( wpo_poster_get_articles_rejected() =='yes' ){
					if( wpo_poster_get_messages_rejected()=='' ){
						$result['reject_content'] = array(
							'class'	=>	'updated',
							'mess'	=>	__('You had enable reject alert, but We not found Messages Template for alert','wpo')
						);						
					}
				}
				if( wpo_poster_get_articles_approve() =='yes' ){
					if( wpo_poster_get_messages_approve()=='' ){
						$result['approve_content'] = array(
							'class'	=>	'updated',
							'mess'	=>	__('You had enable approve alert, but We not found Messages Template for alert','wpo')
						);						
					}
				}				
				
			}
			if($result==NULL){
				$result['success'] = array(
					'class'	=>	'updated successed',
					'mess'	=>	__('Congratulation!','wpo')
				);
			}
		}
		return $result;
	}
}