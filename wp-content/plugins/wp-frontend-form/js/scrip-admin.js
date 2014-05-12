jQuery(document).ready(function($){
	$('input#poster-admin-pay').click(function(){
		var poster_amount = $('input[name="poster-amount"]').val();
		var post_id = $('input#post_ID').val();
		if(confirm('Do you want to pay for this author?')){
			jQuery.ajax({
				type:'POST',
				url:ajaxurl,
				dataType:'json',
				data:{
					"post_id":post_id,
					"poster_amount":poster_amount,
					"action":"poster_admin_pay"
				},
				beforeSend:function(){
					$('input#poster-admin-pay').val('Paying');
				},
				success:function(data){
					if(data.resp=='success'){
						 $('input[name="poster-amount"]').attr('disabled','');
						 $('input[name="poster-amount"]').css('background','#dfdfdf');
						 $('input#poster-admin-pay').val('Paid');
					}
					else{
						alert(data.mess);
						$('input#poster-admin-pay').val('Pay');
					}
					
				}
			});
			return false;			
		}
		return false;	
	});

})