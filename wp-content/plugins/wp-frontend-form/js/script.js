jQuery(document).ready(function($){
	$(".fancybox").fancybox({
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	//$( "#tabs" ).tabs();
	//$("input.datetimepicker").datepicker();
	jQuery('form#wp-guest-poster-form').mousedown( function() {
	    tinyMCE.triggerSave();
	});
	$('a.poster_delete').click(function(){
		var post_id = $(this).attr('post_id');
		if(post_id>0){
			if( confirm('Want to delete this post?') ){
				jQuery.ajax({
					type:'POST',
					dataType:'json',
					data:{
						"action":"poster_delete_post",
						"post_id":post_id
					},
					url:wpo_poster_ajax_url,
					beforeSend:function(){
						$('tr#'+post_id).css('background','rgb(253, 180, 180)');
						$('span#id'+post_id).html('Waiting ...');
					},
					success:function(data){
						if(data.resp=='success'){
							$('tr#'+post_id).hide('slow');
						}
						else{
							alert(data.mess);
						}
					}
				});
				return false;
			}
		}
	});
	$('form#form-poster-profile').submit(function(){
		var data_form = $(this).serialize();
		jQuery.ajax({
			type:'POST',
			data:data_form,
			url:wpo_poster_ajax_url,
			beforeSend:function(){
				$('form#form-poster-profile button[type="submit"]').text('Processing');
				$('div.poster-profile-success').removeClass('alert-success');
				$('div.poster-profile-success').removeClass('alert-error');
				$('div.poster-profile-success').hide();
			},
			success:function(data){
				var data = $.parseJSON(data);
				if( data.resp=='success' ){
					$('div.poster-profile-success').addClass('alert-success');
					if(data.balance){
						$('span#poster_balance').text(data.balance);
					}
				}
				else{
					$('div.poster-profile-success').addClass('alert-error');
				}
				$('div.poster-profile-success').html(data.mess);
				$('div.poster-profile-success').show();					
				$('form#form-poster-profile button[type="submit"]').text('Submit Request');
			}
		});
		return false;
	});
	$('button.load-more-transactions').click(function(){
		var trans_id = $(this).attr('trans_id');
		jQuery.ajax({
			type:'POST',
			url:wpo_poster_ajax_url,
			dataType:'json',
			data:{
				"trans_id":trans_id,
				"action":"load_more_transactions"
			},
			beforeSend:function(){
				$('button.load-more-transactions').text('Loading');
			},
			success:function(data){
				//alert(data.mess);
				if(data.resp=='success'){
					$('table.poster-earnings-table').append(data.mess);
					if(data.trans_id!=null){
						$('button.load-more-transactions').attr('trans_id', data.trans_id);
					}
					else{
						$('button.load-more-transactions').remove();
					}
				}
				$('button.load-more-transactions').text('Load more');
			}
		});
		return false;
	});
	var option = {
		size: 5,
		addText:'',
		toggleAddButton:''
	}
	$('select.wp-guest-poster-text-field').multiselect(option);
	$('div.mselect-list-item input[type="checkbox"]').attr('name','tax[]');
	$('button.frontendformsubmit').click(function(){
		var form = $(this).parents('form:first');
	    var ajaxoptions = {
            beforeSubmit:  wpposter_submit,  // pre-submit callback 
            success:       wpposter_showResponse,  // post-submit callback 
            url:       wpo_poster_ajax_url,         // override for form's 'action' attribute 
            type:      'post',        // 'get' or 'post', override for form's 'method' attribute 
            dataType:  'json'        // 'xml', 'script', or 'json' (expected server response type) 
	    };	
		form.ajaxSubmit(ajaxoptions); 
        return false;	 
	});	

});
function wpposter_submit(formData, jqForm, options) { 
	//jQuery('form#wp-guest-poster-form button[type="submit"]').text('Waiting ...');
	jQuery('form#wp-guest-poster-form button[type="submit"]').hide();
	jQuery('form#wp-guest-poster-form img#poster-icon-loading').show();
	jQuery('span.help-inline').remove();
    return true; 
} 
function wpposter_showResponse(responseText, statusText, xhr, $form){ 
	if(responseText.resp=='required'){
		if(responseText.field!=''){
			if( responseText.post_content==true ||  responseText.post_recaptcha==true ){
				alert(responseText.mess);
			}			
			else{
				jQuery('div.'+responseText.field).addClass('warning');
				jQuery('div.'+responseText.field+' div.controls').append('<span class="help-inline">'+responseText.mess+'</span>');
				jQuery('form#wp-guest-poster-form #'+responseText.field).focus();
			}	
		}
	}
	else if(responseText.resp=='success'){
		if(responseText.url_post==null){
			jQuery('form#wp-guest-poster-form').slideUp();
			jQuery('div.div-wp-guest-poster-form').html(responseText.mess);
			window.setTimeout(function(){location.reload()},1000)
		}
		else{
			window.location.href = responseText.url_post;
		}
	}
	jQuery('form#wp-guest-poster-form img#poster-icon-loading').hide();
	jQuery('form#wp-guest-poster-form button[type="submit"]').show();
	//jQuery('form#wp-guest-poster-form button[type="submit"]').text('Confirm, Post it!');
}