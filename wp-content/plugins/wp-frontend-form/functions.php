<?php
if(!function_exists('wpo_poster_get_editor')){
	function wpo_poster_get_editor($content, $id, $name, $display_media = false) {
		ob_start();
		$settings = array(
			'textarea_name' => $name,
			'media_buttons' => $display_media,
			'textarea_rows'	=>	5,
			'tinymce' => array(
				'editor_class'	=>	'wpeditor',	
				'theme_advanced_buttons1' => 'bold,italic,underline|bullist,blockquote,|,justifyleft,justifycenter,justifyright,justifyfull,|,link,unlink,|'
			)
		);
		// Echo the editor to the buffer
		wp_editor($content,$id, $settings);
		// Store the contents of the buffer in a variable
		$editor_contents = ob_get_clean();
		$editor_contents = str_ireplace("<br>","", $editor_contents);
		// Return the content you want to the calling function
		return $editor_contents;
	}
}
function wpo_poster_insert_attachment($file_handler,$post_id,$setthumb='false', $post_meta = '') {
	// check to make sure its a successful upload
	if ($_FILES[$file_handler]['error'] !== UPLOAD_ERR_OK) __return_false();

	require_once(ABSPATH . "wp-admin" . '/includes/image.php');
	require_once(ABSPATH . "wp-admin" . '/includes/file.php');
	require_once(ABSPATH . "wp-admin" . '/includes/media.php');

	$attach_id = media_handle_upload( $file_handler, $post_id );

	if ($setthumb) update_post_meta($post_id,'_thumbnail_id',$attach_id);
	if(!$setthumb && $post_meta!=''){
		update_post_meta($post_id, $post_meta, $attach_id);
	}
	return $attach_id;
}
if(!function_exists('wpo_poster_notice_email')){
	function wpo_poster_notice_email($post_id) {
		$posts = get_post($post_id, ARRAY_A);
		$user = get_user_by('id', $posts['post_author']);
		$author_email = get_post_meta($post_id,'wp-guest-poster-youremail',true) ? get_post_meta($post_id,'wp-guest-poster-youremail',true) : '';
		if( trim($author_email) == '' ){
			$author_email = $user->user_email;
		}
		if( wpo_poster_is_guest_poster($post_id)=== TRUE ){
			if( get_post_status($post_id) == 'draft' && wpo_poster_get_articles_rejected()=='yes'){
				### reject
				$subject = wpo_poster_get_articles_rejected_subject();
				$messages = wpo_poster_get_messages_rejected();
				$messages = str_ireplace('{messages}', get_post_meta($post_id,'wp_poster_messages',true), $messages);
				$messages = str_ireplace('{articles_title}', strip_tags(get_the_title($post_id)), $messages);
				$messages = str_ireplace('{articles_content}', strip_tags(wpo_poster_get_content($post_id)), $messages);
				wp_mail($author_email, $subject, $messages);

			}
			elseif ( get_post_status($post_id)=='pending'){
				### waiting for approve
				return;
			}
			elseif (get_post_status($post_id)=='publish' && wpo_poster_get_articles_approve()=='yes'){
				### approve
				$subject = wpo_poster_get_articles_approve_subject();
				$messages = wpo_poster_get_messages_approve();
				$messages = str_ireplace('{messages}', get_post_meta($post_id,'wp_poster_messages',true), $messages);
				wp_mail($author_email, $subject, $messages);				
			}
			return;
		}
	}
	add_action('wpo_poster_hook_notice_email', 'wpo_poster_notice_email', 10,1);
}
if(!function_exists('wpo_poster_add_trans')){
	function wpo_poster_add_trans($post_id) {
		$transaction_data = array(
			'post_title'	=>	'#Paid for #' . get_the_title($post_id),
			'post_type'	=>	'poster-transactions',
			'post_status'	=>	'publish'
		);
		$transaction_id = wp_insert_post($transaction_data);
		if($transaction_id>0){
			### add transaction metas
			### amount
			update_post_meta($transaction_id, 'poster_trans_amount', get_post_meta($post_id,'poster_has_paid',true));
			### receiver
			update_post_meta($transaction_id, 'poster_trans_receiver', wpo_poster_get_author($post_id));
			### paid for item
			update_post_meta($transaction_id, 'poster_trans_item_paid', $post_id);
			### Transaction type
			update_post_meta($transaction_id, 'poster_trans_type', 'paid');
		}
	}
	add_action('wpo_poster_hook_add_transactions', 'wpo_poster_add_trans', 10 ,1);
}
if(!function_exists('wpo_poster_add_user_balance')){
	function wpo_poster_add_user_balance($post_id) {
		$author = wpo_poster_get_author($post_id);
		$poster_has_paid = (int)get_post_meta($post_id,'poster_has_paid',true);
		$user_balance = (int)get_user_meta($author,POSTER_USER_BALANCE,TRUE);
		update_user_meta($author, POSTER_USER_BALANCE, $user_balance+$poster_has_paid);
	}
	add_action('wpo_poster_hook_add_transactions', 'wpo_poster_add_user_balance', 10 ,1);
}

if(!function_exists('wpo_poster_get_content')){
	function wpo_poster_get_content($post_id) {
		$post = get_post($post_id, ARRAY_A);
		return $post['post_content'];
	}
}
if(!function_exists('wpo_poster_get_post')){
	function wpo_poster_get_post($post_id) {
		$post = get_post($post_id,OBJECT);
		if($post){
			return $post;
		}
		return null;
	}
}
if(!function_exists('wpo_poster_check_post_term')){
	function wpo_poster_check_post_term($term, $taxonomy, $post){
		$has_term = has_term( $term, $taxonomy, $post );
		if($has_term===true){
			return 'selected';
		}
		return null;
	}
}
if(!function_exists('wpo_poster_get_author')){
	function wpo_poster_get_author($post_id) {
		$post = get_post($post_id, ARRAY_A);
		return $post['post_author'];
	}
}
if(!function_exists('wpo_poster_highlight_status')){
	function wpo_poster_highlight_status($post_id) {
		$post_status = get_post_status($post_id);
		switch ($post_status) {
			case 'publish':
				return '<span class="label label-success id'.$post_id.'">'.__('Complete','wpo').'</span>';
			break;
			
			case 'pending':
				return '<span class="label label-warning id'.$post_id.'">'.__('Pending','wpo').'</span>';
			break;
		}
	}
}
if(!function_exists('wpo_poster_check_post_author')){
	/**
	 * Verify Author's Post
	 * @param unknown_type $post_id
	 */
	function wpo_poster_check_post_author($post_id) {
		$post_id = (int)$post_id;
		$current_user = get_current_user_id();
		if(!$post_id || !$current_user){
			return false;
		}
		if( current_user_can('add_users') ){
			return true;
		}
		$post = get_post($post_id);
		if($post->post_author == $current_user ){
			return true;
		}
		else{
			return false;
		}
	}
}
if(!function_exists('wpo_poster_kriesi_pagination')){
	function wpo_poster_kriesi_pagination($pages = '', $range = 2)
	{  
	     $showitems = ($range * 2)+1;  
		 $navi = null;
	     global $paged;
	     if(empty($paged)) $paged = 1;
	
	     if($pages == '')
	     {
	         global $wp_query;
	         $pages = $wp_query->max_num_pages;
	         if(!$pages)
	         {
	             $pages = 1;
	         }
	     }   
	
	     if(1 != $pages)
	     {
	         $navi .= "<div class='poster-navigation clearfix'>";
	         //if($paged > 2 && $paged > $range+1 && $showitems < $pages) echo "<a href='".get_pagenum_link(1)."'><span class='arrows'>&laquo;</span> First</a>";
	         if($paged > 1) $navi .= "<a class='pagination-prev' href='".get_pagenum_link($paged - 1)."'> &larr; ".__('Previous', 'worthapost')."</a>";
	
	         for ($i=1; $i <= $pages; $i++)
	         {
	             if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
	             {
	                 $navi .= ($paged == $i)? "<span class='current btn btn-primary'>".$i."</span>":"<a href='".get_pagenum_link($i)."' class='inactive btn'  >".$i."</a>";
	             }
	         }
	
	         if ($paged < $pages) echo "<a class='pagination-next' href='".get_pagenum_link($paged + 1)."'>".__('Next', 'worthapost')." &rarr; </a>";  
	         //if ($paged < $pages-1 &&  $paged+$range-1 < $pages && $showitems < $pages) echo "<a href='".get_pagenum_link($pages)."'>Last <span class='arrows'>&raquo;</span></a>";
	         $navi .= "</div>\n";
	     }
	     return $navi;
	}	
}

if(!function_exists('poster_search_where')){
	function poster_search_where( $where = ''){
		if(wp_verify_nonce($_GET['poster_search'],'poster_search_act')){
			global $wpdb;
			$keyword = trim($_GET['keyword']);
			if($keyword!=''){
				$where .= " AND ($wpdb->posts.post_title LIKE '%$keyword%' OR $wpdb->posts.post_content LIKE '%$keyword%')";
			}
			return $where;
		}
		return $where;
	}
}
/*if(!function_exists('wpo_poster_remove_tags')){
	function wpo_poster_remove_tags($content) {
		$content = shortcode_unautop($content);
	    $content = str_ireplace( '<p></p>', '', $content );
	    $content = str_ireplace( '<p>  </p>', '', $content );
	    $content = str_ireplace('<br>', '', $content);
		$content = str_replace("\r\n", '', $content);
		return $content;
	}
	remove_filter( 'the_content', 'wpautop' );
	add_filter( 'the_content', 'wpo_poster_remove_tags',1 );
	//add_filter( 'the_content', 'wpautop' , 99);
	add_filter( 'the_content', 'shortcode_unautop',100 );
}*/

if(!function_exists('wpo_poster_clean_autotag')){
	function wpo_poster_clean_autotag() {
		global $post;
		$posts = get_post($post->ID);
	   if ( stripos( $posts->post_content,'[wpgp') !== FALSE ) {
	   		remove_filter( 'the_content', 'wpautop', 100);
	   }
		
	}
	add_action('wp', 'wpo_poster_clean_autotag');
}
