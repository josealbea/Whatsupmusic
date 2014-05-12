// closure to avoid namespace collision
(function(){
	// creates the plugin
	tinymce.create('tinymce.plugins.myguest_poster', {
		// creates control instances based on the control's id.
		// our button's id is "guest_poster_button"
		createControl : function(id, controlManager) {
			if (id == 'guest_poster_button') {
				// creates the button
				var button = controlManager.createButton('guest_poster_button', {
					title : 'WP FrontEnd Form Shortcode', // title of the button
					image : wpo_poster_form_icon,  // path to the button's image
					onclick : function() {
						// triggers the thickbox
						var width = jQuery(window).width(), H = jQuery(window).height(), W = ( 750 < width ) ? 750 : width;
						W = W - 80;
						H = H - 84;
						tb_show( 'WP FrontEnd Form Shortcode', '#TB_inline?width=' + W + '&height=' + H + '&inlineId=myguest_poster-form' );
					}
				});
				return button;
			}
			return null;
		}
	});
	
	// registers the plugin. DON'T MISS THIS STEP!!!
	tinymce.PluginManager.add('myguest_poster', tinymce.plugins.myguest_poster);
	
	// executes this when the DOM is ready
	jQuery(function(){
		// creates a form to be displayed everytime the button is clicked
		// you should achieve this using AJAX instead of direct html code like this
		var form = jQuery('<div id="myguest_poster-form"><form id="form-myguest_poster">\
				<table id="myguest_poster-table" class="form-table">\
					<tr>\
						<th><label>Form Type</label></th>\
						<td>\
							<select id="myguest_poster-form_type" class="regular-text">\
								<option value="postingform">Posting Form</option>\
								<option value="signinform">Sign-In Form</option>\
								<option value="signupform">Sign-Up Form</option>\
							</select>\
						</td>\
					</tr>\
					<tr>\
						<th><label>Post type</label></th>\
						<td><input class="regular-text" type="text" id="myguest_poster-post_type" name="post_type" value="post" /></td>\
					</tr>\
					<tr>\
						<th><label>Taxonomies (Separated by comma (,))</label></th>\
						<td><input class="regular-text" type="text" id="myguest_poster-taxonomies" name="taxonomies" value="category,post_tag" /></td>\
					</tr>\
					<tr>\
						<th><label>Item Includes (Separated by comma (,))</label></th>\
						<td><input placeholder="eg: 1,2,3,4" class="regular-text" type="text" id="myguest_poster-term_includes" name="term_includes" value="" /></td>\
					</tr>\
					<tr>\
					<th><label>Item Excludes (Separated by comma (,)), not available if set <strong>Item Includes</strong> </label></th>\
						<td><input placeholder="eg: 1,2,3,4" class="regular-text" type="text" id="myguest_poster-term_excludes" name="term_excludes" value="" /></td>\
					</tr>\
					<tr>\
						<th><label>Allow Guest Posting</label></th>\
						<td>\
							<select id="myguest_poster-allow_guest_post" class="regular-text">\
								<option value="yes">Yes</option>\
								<option value="no">No</option>\
							</select>\
						</td>\
					</tr>\
					<tr>\
						<th><label>Display \"Add Media\" button</label></th>\
						<td>\
							<select id="myguest_poster-allow_media_button" class="regular-text">\
								<option value="yes">Yes</option>\
								<option value="no">No</option>\
							</select>\
						</td>\
					</tr>\
					<tr>\
						<th><label>Allow upload Featured Image</label></th>\
						<td>\
							<select id="myguest_poster-allow_feature_img" class="regular-text">\
								<option value="yes">Yes</option>\
								<option value="no">No</option>\
							</select>\
						</td>\
					</tr>\
					<tr>\
						<th><label>Enable Recaptcha</label></th>\
						<td>\
							<select id="myguest_poster-recaptcha" class="regular-text">\
								<option value="yes">Yes</option>\
								<option selected value="no">No</option>\
							</select>\
						</td>\
					</tr>\
					<tr>\
						<th><label>CSS Class</label></th>\
						<td><input class="regular-text" type="text" name="class" id="myguest_poster-class" value="" /></td>\
					</tr>\
					<tr>\
						<th><label>Success Alert</label></th>\
						<td><input class="regular-text" type="text" name="success_alert" id="myguest_poster-success_alert" value="Thanks for send the post!" /></td>\
					</tr>\
				</table>\
				<p class="submit">\
					<input type="button" id="myguest_poster-submit" class="button-primary" value="Insert Shortcode Form" name="submit" />\
					<input type="button" id="myguest_poster-listingpage" class="button-primary" value="Insert Listing Page" name="submit" />\
				</p>\
				<table id="myguest_poster-table-meta" class="form-table">\
					<tr>\
						<th><label>Control Type</label></th>\
						<td>\
							<select id="myguest_poster-meta-type" class="regular-text">\
								<option value="text">Text</option>\
								<option value="email">Email</option>\
								<option value="textarea">Textarea</option>\
								<option value="editor">Visual Editor</option>\
								<option value="datetime">Datetime Picker</option>\
								<option value="checkbox">Checkbox</option>\
								<option value="file">File</option>\
								<option value="select">Select</option>\
								<option value="hidden">Hidden</option>\
							</select>\
						</td>\
					</tr>\
					<tr>\
						<th><label>Meta Label</label></th>\
						<td><input class="regular-text" type="text" id="myguest_poster-meta-label" name="meta_label"/></td>\
					</tr>\
					<tr>\
						<th><label>Meta Key</label></th>\
						<td><input class="regular-text" type="text" id="myguest_poster-meta-metakey" name="meta_key"/></td>\
					</tr>\
					<tr>\
						<th><label>Required</label></th>\
						<td>\
							<select id="myguest_poster-meta-required" class="regular-text">\
								<option value="">No</option>\
								<option value="required">Yes</option>\
							</select>\
						</td>\
					</tr>\
				</table>\
				<p class="submit">\
					<input type="button" id="myguest_poster-meta-submit" class="button-primary" value="Insert Meta Fields" name="submit" />\
				</p>\
				<table id="myguest_poster-table-meta-select" class="form-table">\
					<tr>\
						<th><label>Option</label></th>\
						<td><input class="regular-text" type="text" id="myguest_poster-meta-select-option" name="meta_label"/></td>\
					</tr>\
					<tr>\
						<th><label>Value</label></th>\
						<td><input class="regular-text" type="text" id="myguest_poster-meta-select-value" name="meta_key"/></td>\
					</tr>\
				</table>\
				<p class="submit">\
					<input type="button" id="myguest_poster-meta-select-submit" class="button-primary" value="Insert Select Value" name="submit" />\
				</p>\
			</form></div>');
	
		var table = form.find('table');
		form.appendTo('body').hide();
		
		form.find('#myguest_poster-meta-select-submit').click(function(){
			var options_meta_select = { 
					'option'     : '',
					'value'   : ''
				};
			var shortcode_meta_select = '[wpgp_form_meta_select_value';
			
			for( var index in options_meta_select) {
				var value = table.find('#myguest_poster-meta-select-' + index).val();
				
				// attaches the attribute to the shortcode only if it's different from the default value
				if ( value !== options_meta_select[index] )
					shortcode_meta_select += ' ' + index + '="' + value + '"';
			}
			
			shortcode_meta_select += ']';
			
			// inserts the shortcode into the active editor
			tinyMCE.activeEditor.execCommand('mceInsertContent', 0, shortcode_meta_select);
			tb_remove();
		});	
		
		form.find('#myguest_poster-meta-submit').click(function(){
			var options_meta = { 
					'label'     : '',
					'metakey'   : '',
					'type'		: '',
					'required'	: ''
				};
			var shortcode_meta = '[wpgp_form_meta';
			
			for( var index in options_meta) {
				var value = table.find('#myguest_poster-meta-' + index).val();
				
				// attaches the attribute to the shortcode only if it's different from the default value
				if ( value !== options_meta[index] )
					shortcode_meta += ' ' + index + '="' + value + '"';
			}
			
			shortcode_meta += ']';
			shortcode_meta += '[/wpgp_form_meta]';
			// inserts the shortcode into the active editor
			tinyMCE.activeEditor.execCommand('mceInsertContent', 0, shortcode_meta);
			tb_remove();
		});
		form.find('#myguest_poster-listingpage').click(function(){
			var shortcode = '[wpgp_listingpage post_type="post" editpage_id="" class=""][/wpgp_listingpage]';
			tinyMCE.activeEditor.execCommand('mceInsertContent', 0, shortcode);
			// closes Thickbox
			tb_remove();			
		});
		// handles the click event of the submit button
		form.find('#myguest_poster-submit').click(function(){
			// defines the options and their default values
			// again, this is not the most elegant way to do this
			// but well, this gets the job done nonetheless
			if( jQuery('#myguest_poster-form_type').val() == 'postingform' ){
				var options = { 
						'post_type'    : 'post',
						'taxonomies'	:	'',
						'allow_guest_post'	:	'',
						'allow_media_button'	:	'',
						'allow_feature_img'	:	'',
						'recaptcha'	:	'',
						'class'         : '',
						'success_alert'	:	'',
						'term_excludes'	:	'',
						'term_includes'	:	''
					};
				var shortcode = '[wpgp_form label_title="Post Title" label_content="Post Content" allow_comment="yes" allow_trackping="yes"';
				
				for( var index in options) {
					var value = table.find('#myguest_poster-' + index).val();
					
					// attaches the attribute to the shortcode only if it's different from the default value
					if ( value !== options[index] )
						shortcode += ' ' + index + '="' + value + '"';
				}
				var eg_option = '<br/>[wpgp_form_meta label="eg: First Name" metakey="firstname" type="text"][/wpgp_form_meta]<br/>';
				shortcode += ']'+eg_option+'[/wpgp_form]';				
			}
			else if ( jQuery('#myguest_poster-form_type').val() == 'signinform' ){
				var shortcode = '[wpgp_form_signin label_title="Sign In Form" submit_label="Sign In!" rememberMe="yes"]<br/>';
					var options_user_login = '[wpgp_form_meta label="Login Name" metakey="user_login" type="text" required="required"][/wpgp_form_meta]<br/>';
					var options_user_password = '[wpgp_form_meta label="Password" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]<br/>';
					var options = options_user_login + options_user_password;
				shortcode = shortcode + options + '[/wpgp_form_signin]';
				
			}
			else if( jQuery('#myguest_poster-form_type').val() == 'signupform' ){
				var shortcode = '[wpgp_form_signup label_title="Signup Form" submit_label="Sign Up!" recaptcha="yes"]<br/>';
					var options_user_login = '[wpgp_form_meta label="Login Name" metakey="user_login" type="text" required="required"][/wpgp_form_meta]<br/>';
					var options_user_email = '[wpgp_form_meta label="Your Email" metakey="user_email" type="email" required="required"][/wpgp_form_meta]<br/>';
					var options_user_password = '[wpgp_form_meta label="Password" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]<br/>';
					var options_user_passwordconfirm = '[wpgp_form_meta label="Confirm Password" metakey="user_passconfirm" type="password" required="required"][/wpgp_form_meta]<br/>';
					var options = options_user_login+options_user_email+options_user_password+options_user_passwordconfirm;
				shortcode = shortcode + options + '[/wpgp_form_signup]';
			}
			
			// inserts the shortcode into the active editor
			tinyMCE.activeEditor.execCommand('mceInsertContent', 0, shortcode);
			// closes Thickbox
			tb_remove();			
			
		});
		
	});
})()