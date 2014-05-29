<?php
if ( ! defined( 'ABSPATH' ) )
	die( "Can't load this file directly" );
	
if( !function_exists('wpo_poster_add_formpost_shortcode') ){
	function wpo_poster_add_formpost_shortcode() {
		add_shortcode('wpgp_form', 'wp_guest_poster_form');
		add_shortcode('wpgp_form_signup', 'wpgp_form_signup_form');
		add_shortcode('wpgp_form_signin', 'wpgp_form_signin_form');
		add_shortcode('wpgp_form_meta', 'wp_guest_poster_meta');
		add_shortcode('wpgp_form_meta_select_value', 'wp_guest_poster_meta_select_value');
		add_shortcode('wpgp_listingpage', 'wpgp_listingpage_call');
		add_shortcode('wpgp_one_columns_12', 'wpgp_one_columns_12_call');
		add_shortcode('wpgp_two_columns_4_8', 'wpgp_two_columns_4_8_call');
			add_shortcode('wpgp_two_columns_4', 'wpgp_two_columns_4_call');
			add_shortcode('wpgp_two_columns_8', 'wpgp_two_columns_8_call');
		add_shortcode('wpgp_two_columns_6_6', 'wpgp_two_columns_6_6_call');
			add_shortcode('wpgp_two_columns_6', 'wpgp_two_columns_6_call');
		add_shortcode('wpgp_three_columns_4_4_4', 'wpgp_three_columns_4_4_4_call');
			add_shortcode('wpgp_three_columns_4', 'wpgp_three_columns_4_call');
	}
	add_action('init', 'wpo_poster_add_formpost_shortcode');
}
if(!function_exists('wpgp_listingpage_call')){
	function wpgp_listingpage_call($args, $content) {
		$html = null;
		$post_type = trim( $args['post_type'] ) ? trim( $args['post_type'] ) : 'post';
		$editpage_id = (int)trim( $args['editpage_id'] );
		$class = trim( $args['class'] ) ? trim( $args['class'] ) : null;
		$keyword = trim( $_GET['keyword'] );
		if( post_type_exists( $post_type ) ){
			$current_user = get_current_user_id();
			if(!$current_user || $current_user == 0){
				$html .= '
					<div class="alert">
						'.__('Please login to access your post','wpo').'
					</div>			
				';					
			}
			else{
				$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
				add_filter('posts_where', 'poster_search_where');
				$args = array(
					'posts_per_page'  => wpo_poster_get_listingpage_show(),
					//'offset'          => 0,
					'orderby'         => 'post_date',
					'order'           => 'DESC',
					'post_type'       => $post_type,
					'post_status'     => 'publish,pending',
					'author'	=>	$current_user,
					'paged'	=>	$paged
				);				
				//$posts = get_posts($args);
				query_posts($args);	
				remove_filter('posts_where', 'poster_search_where');
				$html .= '	
					<form action method="get">
						<div class="input-append">									
						  <input value="'.trim($_GET[keyword]).'" placeholder="'.__('Keyword','wpo').'" class="span2" name="keyword" type="text">
						  <button class="btn" type="submit">Rechercher</button>
						  '.wp_nonce_field('poster_search_act','poster_search',false).'
						</div>
					</form>
				';				
				if(have_posts()){
					$html .= '<table class="table table-hover '.$class.'">';
						$html .= '
							<thead>
				                <tr>
				                  <th>'.__('Post Status','wpo').'</th>
				                  <th>'.__('Post Title','wpo').'</th>
				                  <th>'.__('Date','wpo').'</th>
				                </tr>
			              	</thead><tbody>						
						';
						while (have_posts()):the_post();
						/**
						foreach ($posts as $post){
							$html .= '
								<tr id="'.$post->ID.'">
								  <td>'.wpo_poster_highlight_status($post->ID).'</td>
				                  <td>
				                  	<h4><a href="'.get_permalink( $post->ID ).'">'.$post->post_title.'</a></h4>
				                  		<div>
				                  			<i class="icon-remove"></i><a id="'.$post->ID.'" class="poster_delete" post_id="'.$post->ID.'" href="javascript:return false;">'.__('Delete','wpo').'</a>
				                  			<i class="icon-edit"></i><a href="'.get_permalink($editpage_id).'?post_id='.$post->ID.'">'.__('Edit','wpo').'</a>
				                  		</div>
				                  	</td>
				                  <td>'.$post->post_date.'</td>
				                </tr>								
							';
						}
						**/
						
							$html .= '
								<tr id="'.get_the_ID().'">
								  <td>'.wpo_poster_highlight_status(get_the_ID()).'</td>
				                  <td>
				                  	<h3><a href="'.get_permalink( get_the_ID() ).'">'.get_the_title().'</a></h3>
				                  		<div>
				                  			<i class="icon-remove"></i><a id="'.get_the_ID().'" class="poster_delete" post_id="'.get_the_ID().'" href="javascript:return false;">'.__('Delete','wpo').'</a>
				                  			<i class="icon-edit"></i><a href="'.get_permalink($editpage_id).'?post_id='.get_the_ID().'">'.__('Edit','wpo').'</a>
				                  		</div>
				                  	</td>
				                  <td>'.get_the_date().'</td>
				                </tr>								
							';						
						
						endwhile;
						
					$html .= '<tbody></table>';
					if(function_exists('wpo_poster_kriesi_pagination')){
						$html .= wpo_poster_kriesi_pagination($pages = '', $range = 100);
					}
					
				}
				else{
					$html .= '
						<div class="alert">
							'.__('We found no post on this page. Please refine your search criteria!','wpo').'
						</div>			
					';					
				}
			}
		}
		else{
			$html .= '
				<div class="alert">
					'.__('Post type not exist!','wpo').'
				</div>			
			';				
		}
		wp_reset_query();
		return $html;
	}
}
if(!function_exists('wpgp_form_signup_form')){
	function wpgp_form_signup_form($args, $content){
		$label_title = trim( $args['label_title'] ) ? trim( $args['label_title'] ) : __('Signup Form','wpo');
		$submit_label = trim( $args['submit_label'] ) ? trim( $args['submit_label'] ) : __('Signup','wpo');
		$recaptcha = trim( $args['recaptcha'] ) ? trim( $args['recaptcha'] ) : 'no'; 
		if(get_current_user_id()):
			$html .= '
				<div class="alert alert-success">
				 '.__('You are already signed in on our site.','wpo').'
				</div>			
			';		
		else:
			$html .= '
				<div class="div-wp-guest-poster-form">
					<legend>'.$label_title.'</legend>
					<form action="" method="post" name="wp-guest-poster-signup" id="wp-guest-poster-form" class="wp-guest-poster-form">
						'.do_shortcode($content).'
			';
			if( $recaptcha=='yes' && wpo_poster_get_recaptcha_private_key()!='' && wpo_poster_get_recaptcha_publish_key()!='' ){
				$error = null;
				$html .= '
				  <div class="control-group">
				    <div class="controls">
				      '. recaptcha_get_html(wpo_poster_get_recaptcha_publish_key(), $error) .'
				      <input type="hidden" name="poster[recaptcha]" value="yes">
				    </div>
				  </div>				
				';
			}			
			$html .='
			  <div class="control-group">
			    <div class="controls">
			      <input type="hidden" name="action" value="wp_guest_poster_act">
			      '.wp_nonce_field('wp_guest_poster_signup_act','wp_guest_poster_signup').'
			      <img style="display:none" id="poster-icon-loading" src="'.plugin_dir_url(__FILE__).'img/loading.gif">
			      <button type="submit" class="btn btn-large button button-primary frontendformsubmit">'.$submit_label.'</button>
			    </div>
			  </div>
			</form>	
			</div>
		';		
		endif;	
		return $html;
	}
}
if(!function_exists('wpgp_form_signin_form')){
	function wpgp_form_signin_form($args, $content) {
		$label_title = trim( $args['label_title'] ) ? trim( $args['label_title'] ) : __('Sign In Form','wpo');
		$submit_label = trim( $args['submit_label'] ) ? trim( $args['submit_label'] ) : __('Sign In','wpo');
		$rememberMe = trim( $args['rememberMe'] ) ? trim( $args['rememberMe'] ) : 'yes';
		$html = '';
		if(get_current_user_id()):
			$html .= '
				<div class="alert alert-success">
				 '.__('You are already signed in on our site.','wpo').'
				</div>			
			';		
		else:
			if( $rememberMe=='yes' ){
				$htmlrememberMe = '
					<label class="checkbox">
				        <input type="checkbox" name="rememberMe"> '.__('Remember me','wpo').'
				    </label>
				';
			} 
				$html .= '
					<div class="div-wp-guest-poster-form">
						<legend>'.$label_title.'</legend>
						<form action="" method="post" name="wp-guest-poster-signup" id="wp-guest-poster-form" class="wp-guest-poster-form">
							'.do_shortcode($content).'
				';
				$html .='
				  <div class="control-group">
				    <div class="controls">
				      '.$htmlrememberMe.'
				      <input type="hidden" name="action" value="wp_guest_poster_act">
				      '.wp_nonce_field('wp_guest_poster_signin_act','wp_guest_poster_signin').'
				      <img style="display:none" id="poster-icon-loading" src="'.plugin_dir_url(__FILE__).'img/loading.gif">
				      <button type="submit" class="btn btn-large button button-primary frontendformsubmit">'.$submit_label.'</button>
				    </div>
				  </div>
				</form>	
				</div>
			';
		endif;
		return $html;		
	}
}
if( !function_exists('wp_guest_poster_meta_select_value ') ){
	function wp_guest_poster_meta_select_value($args) {
		$html = '';
		if( $args['value']!='' && $args['option']!='' ){
			$html .= '<option value="'.$args['value'].'">'.$args['option'].'</option>';
		}
		return $html;
	}
}

if(!function_exists('wp_guest_poster_meta')){
	function wp_guest_poster_meta($args, $content){
		$html = null;
		$article_id = (int)$_GET['post_id'];
		if( $args['metakey']!='' ){
			$hidden = null;
			$type = trim($args['type']) ? trim($args['type']) : 'text';
			if( $args['required']=='required' ){
				$required = '<span class="label label-important">'.__('Required','wpo').'</span>';
				$required_hidden = '<input type="hidden" name="poster_required[]" value="'.$args['metakey'].'" />';
			}
			switch ($type){
				case 'textarea':
					$type_html = '<textarea '.$args['required'].' class="poster-metafield wp-guest-poster-text-field" id="'.$args[metakey].'" name="poster_meta['.$args[metakey].']">'.get_post_meta($article_id,$args[metakey],true).'</textarea>';	
				break;
				case 'editor':
					$editor_content = get_post_meta($article_id,$args[metakey],true) ? get_post_meta($article_id,$args[metakey],true) : NULL;
					$type_html = wpo_poster_get_editor($editor_content,'poster_meta['.$args[metakey].']','poster_meta['.$args[metakey].']');
				break;
				case 'select':
					$type_html = '
						<select '.$args['required'].' class="poster-metafield wp-guest-poster-text-field" id="'.$args['metakey'].'" name="poster_meta['.$args['metakey'].']">
							<option value="">'.__('Choose a ' . $args['label']).'</option>
							'.do_shortcode($content).'
						</select>
					';
				break;
				case 'datetime':
					$datetime = get_post_meta($article_id,$args[metakey],true) ? get_post_meta($article_id,$args[metakey],true) : null; 
					$type_html = '<input value="'.$datetime.'" '.$args['required'].' class="poster-metafield wp-guest-poster-text-field datetimepicker" type="'.$type.'" id="'.$args[metakey].'" onclick="javascript:NewCssCal(\''.$args[metakey].'\',\'MMddyyyy\')" name="poster_meta['.$args[metakey].']">';
				break;
				case 'text':
					$text = get_post_meta($article_id,$args[metakey],true) ? get_post_meta($article_id,$args[metakey],true) : null;
					$type_html = '<input value="'.$text.'" '.$args['required'].' class="poster-metafield wp-guest-poster-text-field form-control" type="'.$type.'" id="'.$args[metakey].'" name="poster_meta['.$args[metakey].']">';
				break;
				case 'password':
					$type_html = '<input '.$args['required'].' class="poster-metafield wp-guest-poster-text-field" type="'.$type.'" id="'.$args[metakey].'" name="poster_meta['.$args[metakey].']">';
				break;				
				case 'email':
					$email = get_post_meta($article_id,$args[metakey],true) ? get_post_meta($article_id,$args[metakey],true) : null;
					$type_html = '<input value="'.$email.'" '.$args['required'].' class="poster-metafield wp-guest-poster-text-field" type="'.$type.'" id="'.$args[metakey].'" name="poster_meta['.$args[metakey].']">';
				break;
				case 'checkbox':
					$checked = get_post_meta($article_id,$args[metakey],true) ? 'checked' : null;
					$type_html = '<input '.$checked.' '.$args['required'].' class="poster-metafield" type="'.$type.'" id="'.$args[metakey].'" name="poster_meta['.$args[metakey].']">';
				break;
				case 'file':
					$type_html = '<input '.$args['required'].' class="poster-metafield wp-guest-poster-text-field form-control" type="'.$type.'" id="'.$args[metakey].'" name="'.$args[metakey].'">';
				break;
				case 'hidden':
					$hidden = 'style="display:none;"';
					$type_html = '<input '.$args['required'].' class="poster-metafield wp-guest-poster-text-field" type="'.$type.'" id="'.$args[metakey].'" name="poster_hidden['.$args[metakey].']" value="'.$args[metakey].'">';
				break;
				
			}
			$html .= '
			  <div '.$hidden.' class="control-group '.$args['metakey'].'">
			  	<label class="control-label" for="'.$args['metakey'].'">'.__($args['label']).'</label>
			    <div class="controls" style="display:inline">
			      '.$type_html.'
			      '.$required.'
			      '.$required_hidden.'
			    </div>
			  </div>			
			';		
		}
		else{
			$html .= '
				<div class="alert">
				 '.__('Invalid meta post','wpo').'
				</div>			
			';
		}
		return $html;
	}
}
if( !function_exists('wp_guest_poster_form') ){
	function wp_guest_poster_form($args, $content){
		wp_reset_postdata();
		$article_id = (int)$_GET['post_id'];
		if( !is_user_logged_in() && trim( $args['allow_guest_post']=='no' )):
			$html .= '
				<div class="div-wp-guest-poster-form">
					'.wpo_poster_guest_poster_login_act().'
					<form action="" method="post" name="wp-guest-poster-login" id="wp-guest-poster-login" class="wp-guest-poster-form">
					  <div class="control-group">
					    <label class="control-label" for="inputEmail">'.__('Account','wpo').'</label>
					    <div class="controls">
					      <input class="wp-guest-poster-text-field" type="text" id="inputEmail" name="poster[account]">
					    </div>
					  </div>
					  <div class="control-group">
					    <label class="control-label" for="inputPassword">'.__('Password','wpo').'</label>
					    <div class="controls">
					      <input class="wp-guest-poster-text-field" type="password" id="inputPassword" name="poster[password]">
					    </div>
					  </div>
					  <div class="control-group">
					    <div class="controls">
					      <label class="checkbox">
					        <input name="poster[me]" type="checkbox"> '.__('Remember me','wpo').'
					      </label>
					      '.wp_nonce_field('wp_guest_poster_login_act','wp_guest_poster_login',false).'
					      <input type="hidden" name="action" value="wp_guest_poster_login_act">
					      <input type="hidden" name="poster[page]" value="'.get_the_ID().'">
					      <button type="submit" class="btn btn-large btn-primary">'.__('Sign in','wpo').'</button>
					    </div>
					  </div>						
					</form>
				</div>
			';
		elseif($article_id>0 && wpo_poster_check_post_author($article_id)===false):
			$html .= '
				<div class="alert">
					'.__('You can not change this post!','wpo').'
				</div>			
			';			
		else:
		$post_type = trim( $args['post_type'] ) ? trim( $args['post_type'] ) : 'post';
		if( post_type_exists( $post_type ) ):
		$required = '<span class="label label-important">'.__('Required','wpo').'</span>';
		$post_title_label = trim( $args['label_title'] ) ? trim( $args['label_title'] ) : __('Post Title','wpo');
		$post_content_label = trim( $args['label_content'] ) ? trim( $args['label_content'] ) : __('Post Content','wpo');
		$taxonomies = trim( $args['taxonomies'] );
		$allow_comment = trim( $args['allow_comment'] ) ? trim( $args['allow_comment'] ) : 'yes';
		$allow_trackping = trim( $args['allow_trackping'] ) ? trim( $args['allow_trackping'] ) : 'yes';
		$allow_media_button = trim( $args['allow_media_button'] ) ? trim( $args['allow_media_button'] ) : 'no';
		$success_alert = trim( $args['success_alert'] ) ? trim( $args['success_alert'] ) : ''; 
		$class = trim( $args['class'] ) ? trim( $args['class'] ) : NULL;
		$term_excludes = trim( $args['term_excludes'] ) ? explode(',', trim( $args['term_excludes'] )) : null;
		$term_includes = trim( $args['term_includes'] ) ? explode(',', trim( $args['term_includes'] )) : null;
		if($term_includes){ $term_excludes = null; }
		if($allow_media_button=='yes'){
			$allow_media_button = true;
		}
		else{
			$allow_media_button = false;
		}
		if($taxonomies){
			$taxonomies_display = explode(',', $taxonomies);
		}
		### update post
			if($article_id>0){
				$thepost = wpo_poster_get_post($article_id);
				$poster_title = $thepost->post_title ? $thepost->post_title : null;
				$poster_content = $thepost->post_content ? $thepost->post_content : NULL;
				$comment_status = $thepost->comment_status ? $thepost->comment_status : 'open';
				$ping_status = $thepost->ping_status ? $thepost->ping_status: 'closed';
				
			}
		$html .= '
			<div class="div-wp-guest-poster-form '.$class.'">
			<form action="" method="post" name="wp-guest-poster-form" id="wp-guest-poster-form" enctype="multipart/form-data">
			  <div class="control-group post_title">
			    <label class="control-label" for="post_title">'.$post_title_label.'</label>
			    <div class="controls">
			      <input value="'.$poster_title.'" required class="wp-guest-poster-text-field" type="text" id="post_title" name="poster[post_title]">
			      '.$required.'
			    </div>
			  </div>
			  <div class="control-group post_content">
			    <label class="control-label" for="Post content">'.$post_content_label.'</label>
			    <div class="controls">
			      '.wpo_poster_get_editor($poster_content, 'post_content', 'poster[post_content]',$allow_media_button).'
			      '.$required.'
			    </div>
			  </div>
			';
			### get all taxonomy of post type
			$args_taxonomy	=	array(
				'object_type' => array($post_type) 
			); 
			$output = 'objects'; // or objects
			$operator = 'and'; // 'and' or 'or'
			$tax=get_taxonomies($args_taxonomy,$output);
			if  (is_array($tax)){
				foreach ($tax  as $taxonomy ){
					if( in_array($taxonomy->name, $taxonomies_display) === true ):
						if($taxonomy->hierarchical==1){
							### category v2
							/**
							$select_cats = wp_dropdown_categories(array(
								'echo' => 0,
								'exclude'	=>	1,
								'class'	=>	'wp-guest-poster-text-field',
								'name'	=>	'poster['.$taxonomy->name.']',
								'hide_empty'	=>	0,
								'taxonomy'	=>	$taxonomy->name,
							));
							$select_cats = str_replace( 'id=', 'multiple="on" id=', $select_cats );
							**/
							### v3
							$select_cats = '<select multiple="on" class="wp-guest-poster-text-field" name="poster['.$taxonomy->name.']">';
								$term = get_terms($taxonomy->name, array('hide_empty'=>false));
								foreach ($term as $t){
									if($term_excludes || $term_includes){
										if($term_excludes && !in_array($t->term_id, $term_excludes)){
											$select_cats.= '<option '.wpo_poster_check_post_term($t->term_id, $taxonomy->name, $article_id).' value="'.$t->term_id.'">'.$t->name.'</option>';	
										}
										elseif($term_includes && in_array($t->term_id, $term_includes)){
											$select_cats.= '<option '.wpo_poster_check_post_term($t->term_id, $taxonomy->name, $article_id).' value="'.$t->term_id.'">'.$t->name.'</option>';
										}										
									}
									else{
										$select_cats.= '<option '.wpo_poster_check_post_term($t->term_id, $taxonomy->name, $article_id).' value="'.$t->term_id.'">'.$t->name.'</option>';
									}
								}
							$select_cats .= '</select>';

							$html .= '
							  <div class="control-group '.$taxonomy->name.'">
							    <label class="control-label" for="'.__($taxonomy->labels->name).'">'.__($taxonomy->labels->name).'</label>
							    <div class="controls">
							      '.$select_cats.'
							    </div>
							  </div>						
							';
						}
						else{
							if( $taxonomy->name!='post_format' ):
								$tagsstr = null;
								if($article_id>0){
									$tags = wp_get_post_terms($article_id, $taxonomy->name,array("fields" => "names"));
									$tagsstr = implode(',', $tags);									
								}
							### tag
							$html .= '
							   <div class="control-group '.$taxonomy->name.'">
							    <label class="control-label" for="'.__($taxonomy->labels->name).'">'.__($taxonomy->labels->name).'</label>
							    <div class="controls">
							      <input value="'.$tagsstr.'" class="wp-guest-poster-text-field" type="text" id="'.$taxonomy->name.'" name="poster['.$taxonomy->name.']">
							      <span class="label label-info">'.__('Separated by comma','wpo').'</span>
							    </div>
							  </div>
							';
							endif;
						}
					endif;
				}
			}
			### post meta
			if($content){
				$html .= do_shortcode(shortcode_unautop($content));
			}			
			### Images feature
			if( trim( $args['allow_feature_img']=='yes' ) ){
				$html .= '
				  <div class="control-group">
				    <label class="control-label" for="featured_image">'.__('Featured Image','wpo').'</label>
				    <div class="controls">
				      <input class="wp-guest-poster-text-field" type="file" id="featured_image" name="featured_image">
				    </div>
				  </div>				
				';
			}
			// if( $allow_comment=='yes' || $allow_trackping =='yes' ){
			// 	$html .= '<div class="control-group discussion">';
			// 		if($allow_comment=='yes'){
			// 			if($comment_status=='open'){
			// 				$comment_status = 'checked';
			// 			}
			// 			else{
			// 				$comment_status = NULL;
			// 			}
			// 			$html .= '
			// 			    <label class="control-label" for="Discussion">'.__('Discussion','wpo').'</label>
			// 			    <div class="controls">
			// 			      <input '.$comment_status.' type="checkbox" id="discussion_comment" name="poster[discussion_comment]">
			// 			      <label>'.__('Allow comments.','wpo').'</label>
			// 			    </div>						
			// 			';
			// 		}
			// 		if($allow_trackping=='yes'){
			// 			if($ping_status=='open'){
			// 				$ping_status = 'checked';
			// 			}
			// 			else{
			// 				$ping_status = NULL;
			// 			}						
			// 			$html .= '
			// 		    <div class="controls">
			// 		      <input '.$ping_status.' type="checkbox" id="discussion_track" name="poster[discussion_track]">
			// 		      <label>'.__('Allow trackbacks and pingbacks on this page.','wpo').'</label>
			// 		    </div>						
			// 			';
			// 		}
				
			// 	$html .= '</div>';
			// }
			if( trim( $args['recaptcha']=='yes' ) && wpo_poster_get_recaptcha_private_key()!='' && wpo_poster_get_recaptcha_publish_key()!='' ){
				$error = null;
				$html .= '
				  <div class="control-group">
				    <div class="controls">
				      '. recaptcha_get_html(wpo_poster_get_recaptcha_publish_key(), $error) .'
				      <input type="hidden" name="poster[recaptcha]" value="yes">
				    </div>
				  </div>				
				';
			}
			if( $success_alert!='' ){
				$html .= '
				  <div class="control-group success-notice">
				    <div class="controls">
				    	<input type="hidden" name="poster[success_alert]" value="'.$success_alert.'">
				    </div>
				  </div>				
				';				
			}
			$html .='
			  <div class="control-group submit-button">
			    <div class="controls">
			      '.wp_nonce_field('wp_guest_poster_act','wp_guest_poster').'
			      <input type="hidden" name="post_id" value="'.$article_id.'">
			      <input type="hidden" name="action" value="wp_guest_poster_act">
			      <input type="hidden" name="poster[post_type]" value="'.$post_type.'">
			      <input type="hidden" name="poster[current_page]" value="'.get_the_ID().'">
			      <img style="display:none" id="poster-icon-loading" src="'.plugin_dir_url(__FILE__).'img/loading.gif">
			      <button type="submit" class="btn btn-large button button-primary frontendformsubmit">'.__('Confirm, Post it!','wpo').'</button>
			    </div>
			  </div>
			</form>	
			</div>
		';
		else:
			$html .= '
				<div class="alert">
					'.__('Post type not exist!','wpo').'
				</div>			
			';		
		endif;
		endif;		
		return $html;
	}
}