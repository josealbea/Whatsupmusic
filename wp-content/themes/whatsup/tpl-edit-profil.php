<?php
/*
Template Name: Edition du profil
*/
$user = wp_get_current_user();
if($user->ID == 0){
    header('location:login');
}
if(!empty($_POST)){
   $post_id = $post->ID;
   if (!empty( $_FILES ) ) {
    require_once(ABSPATH . 'wp-admin/includes/admin.php');
    $id = media_handle_upload('async-upload', $post_id); 
    $file = $id['file'];
    $upload_dir = wp_upload_dir();
    //var_dump(wp_get_attachment_image($id, array(500,200), 0, array('width' => 500, 'height' => 200)));
    unset($_FILES);
    if ( is_wp_error($id) ) {
        $errors['upload_error'] = $id;
        $id = false;
    }

    if ($errors) {
        echo "<p>Une erreur est survenue durant l'envoi de l'image.</p>";
    } else {
        update_user_meta(get_current_user_id(),'cover', $id); 
    }
}
update_user_meta(get_current_user_id(),'first_name',$_POST['first_name']); 
update_user_meta(get_current_user_id(),'last_name',$_POST['last_name']); 
update_user_meta(get_current_user_id(),'nickname',$_POST['nickname']); 
update_user_meta(get_current_user_id(),'facebook',$_POST['facebook']); 
update_user_meta(get_current_user_id(),'twitter',$_POST['twitter']); 
update_user_meta(get_current_user_id(),'website',$_POST['website']); 
update_user_meta(get_current_user_id(),'googleplus',$_POST['googleplus']); 
update_user_meta(get_current_user_id(),'description',$_POST['description']);  
update_user_meta(get_current_user_id(),'user_url',$_POST['user_url']); 
update_user_meta(get_current_user_id(),'years',$_POST['age']);
}
?>
<?php get_header();?>

<div class="background">
    <h1 class="editer-profil">Edition de votre profil</h1>
    <form action="" method="POST" enctype="multipart/form-data">
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
        <p id="async-upload-wrap">
            <label for="async-upload">Photo de couverture de votre profil</label>
            <input type="file" id="async-upload" name="async-upload">
        </p>
        <input type="submit" value="Modifier mon profil" class="button"/>
    </form>
</div>

<?php get_footer(); ?>
