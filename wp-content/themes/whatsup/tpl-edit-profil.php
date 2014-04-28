<?php
/*
Template Name: Edition du profil
*/
$user = wp_get_current_user();
if($user->ID == 0){
    header('location:login');
}
if(!empty($_POST)){
    //var_dump($_POST);
	update_user_meta(get_current_user_id(),'first_name',$_POST['first_name']); 
    update_user_meta(get_current_user_id(),'last_name',$_POST['last_name']); 
    update_user_meta(get_current_user_id(),'nickname',$_POST['nickname']); 
    update_user_meta(get_current_user_id(),'facebook',$_POST['facebook']); 
    update_user_meta(get_current_user_id(),'twitter',$_POST['twitter']); 
    update_user_meta(get_current_user_id(),'website',$_POST['website']); 
    update_user_meta(get_current_user_id(),'googleplus',$_POST['googleplus']); 
    update_user_meta(get_current_user_id(),'description',$_POST['description']);  
    update_user_meta(get_current_user_id(),'user_url',$_POST['user_url']); 
    update_user_meta(get_current_user_id(),'age',$_POST['age']); 
}
?>
<?php get_header();?>

    <style type="text/css">
    body{
        background-image:url('bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
    }
    .background{
    margin: 100px auto 0;
    text-align: left;
    width: 35%;
    background: transparent;
    padding: 10px 20px;
    border-radius: 4px;
    clear: both;
    }

    .form-control {
    background-color:transparent;
    background-image: none;
    border: 1px solid #CCCCCC;
    border-radius: 4px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
    color: #555555;
    display: block;
    font-size: 14px;
    height: 34px;
    line-height: 1.42857;
    margin-bottom: 15px;
    padding: 6px 12px;
    transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
    width: 100%;
}

    .button{
    background: #5a97f7; /* Old browsers */
background: -moz-linear-gradient(top,  #5a97f7 0%, #306cf2 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#5a97f7), color-stop(100%,#306cf2)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #5a97f7 0%,#306cf2 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #5a97f7 0%,#306cf2 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #5a97f7 0%,#306cf2 100%); /* IE10+ */
background: linear-gradient(to bottom,  #5a97f7 0%,#306cf2 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#5a97f7', endColorstr='#306cf2',GradientType=0 ); /* IE6-9 */
    border-color: #357EBD;
    color: #FFFFFF;
    border: 1px solid rgba(0, 0, 0, 0);
    border-radius: 4px;
    cursor: pointer;
    display: inline-block;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857;
    margin-bottom: 0;
    padding: 6px 12px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-shadow: 1px 1px 2px #000000;
    width:100%;
    }
    .inscription{color: #FFFFFF;
    text-align: center;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);}
    </style>

<div class="background">
    <h1 class="inscription">Edition de votre profil</h1>
<form action="" method="POST">
     <?php // $all_meta_for_user = get_user_meta( get_current_user_id() );
  // echo "<pre>"; var_dump( $all_meta_for_user ); ?>
    <label for="first_name">Votre nom</label>
    <input type="text" name="first_name" id="name" value="<?php echo get_user_meta(get_current_user_id(),'first_name',true); ?>" class="form-control" />
    <label for="last_name">Votre prénom</label>
    <input type="text" name="last_name" id="last_name" value="<?php echo get_user_meta(get_current_user_id(),'last_name',true); ?>" class="form-control" />
    <label for="nickname">Votre pseudonyme</label>
    <input type="text" name="nickname" id="nickname" value="<?php echo get_user_meta(get_current_user_id(),'nickname',true); ?>" class="form-control" />
    <label for="age">Votre age</label>
    <input type="text" name="age" id="age" value="<?php echo get_user_meta(get_current_user_id(),'age',true); ?>" class="form-control" />
    <label for="website">Votre site web</label>
    <input type="text" name="website" id="website" value="<?php echo get_user_meta(get_current_user_id(),'website',true); ?>" class="form-control" />
    <label for="facebook">Votre compte Facebook</label>
    <input type="text" name="facebook" id="facebook" value="<?php echo get_user_meta(get_current_user_id(),'facebook',true); ?>" class="form-control" />
    <label for="twitter">Votre compte Twitter</label>
    <input type="text" name="twitter" id="twitter" value="<?php echo get_user_meta(get_current_user_id(),'twitter',true); ?>" class="form-control" />
    <label for="googleplus">Votre compte Google Plus</label>
    <input type="text" name="googleplus" id="googleplus" value="<?php echo get_user_meta(get_current_user_id(),'googleplus',true); ?>" class="form-control" />
    <label for="website">Description de votre profil</label>
    <textarea name="description"><?php echo get_user_meta(get_current_user_id(),'description',true); ?></textarea>
    
    <input type="submit" value="Modifier mon profil" class="button"/>
</form>
</div>

<?php get_footer(); ?>
