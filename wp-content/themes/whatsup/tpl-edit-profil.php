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

<div class="background">
    <h1 class="editer-profil">Edition de votre profil</h1>
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
    <textarea name="description" rows="6"><?php echo get_user_meta(get_current_user_id(),'description',true); ?></textarea>
    
    <input type="submit" value="Modifier mon profil" class="button"/>
</form>
</div>

<?php get_footer(); ?>
